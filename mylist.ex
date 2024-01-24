defmodule MyList do 
  def max([]), do: nil
  def max(list) do 
    find_max(list, 0)
  end

  defp find_max([], current_max), do: current_max
  defp find_max([head | tail], current_max) when head > current_max do 
    find_max(tail, head)
  end
  defp find_max([_ | tail], current_max) do 
    find_max(tail, current_max)
  end

  def min([]), do: nil
  def min(list) do 
    find_min(list, 0)
  end

  defp find_min([], current_min), do: current_min
  defp find_min([head | tail], current_min) when head < current_min do 
    find_min(tail, head)
  end
  defp find_min([_ | tail], current_min) do 
    find_min(tail, current_min)
  end
end
