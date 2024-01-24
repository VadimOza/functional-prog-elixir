defmodule Navigator do
  @max_depth 2

  def navigate(path) do
    expanded_dir = Path.expand(path)
    go_through([expanded_dir], 0)
  end

  defp go_through([], _depth), do: nil
  defp go_through([content | rest], depth) when depth > @max_depth, do: nil 
  defp go_through([content | rest], depth) do 
    print_and_navigate(content, dir?(content), depth)
    go_through(rest, depth)
  end

  defp print_and_navigate(_dir, false, _current_depth), do: nil
  defp print_and_navigate(dir, true, current_depth) do 
    IO.puts(dir)
    children_dirs = File.ls!(dir)
    go_through(expand_dirs(children_dirs, dir), current_depth + 1)
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
