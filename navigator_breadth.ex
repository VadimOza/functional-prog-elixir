defmodule Navigator do
  @max_breadth 2

  def navigate(path) do
    expanded_dir = Path.expand(path)
    go_through([expanded_dir])
  end

  defp go_through([]), do: nil
  defp go_through([content | rest]) do 
    print_and_navigate(content, dir?(content), 0)
    go_through(rest)
  end

  defp print_and_navigate(_dir, false, _current_breadth), do: nil
  defp print_and_navigate(dir, true, current_breadth) do 
    IO.puts(dir)
    children_dirs = File.ls!(dir)
    expanded_dirs = expand_dirs(children_dirs, dir)
    limitedChildren = limitChildren(expanded_dirs, 1)
    go_through(limitedChildren)
  end

  defp limitChildren(_, current_breadth) when current_breadth > @max_breadth, do: []
  defp limitChildren([], _), do: []
  defp limitChildren([head | tail], current_breadth) do 
    if dir?(head) do
      [head | limitChildren(tail, current_breadth + 1)]
    else
      limitChildren(tail, current_breadth)
    end
  end

  defp expand_dirs([], _relative_to), do: []
  defp expand_dirs([dir | dirs], relative_to) do 
    expanded_dir = Path.expand(dir, relative_to)
    [expanded_dir | expand_dirs(dirs, relative_to)]
  end

  def dir?(dir) do 
    {:ok, %{type: type}} = File.lstat(dir)
    type == :directory
  end
end
