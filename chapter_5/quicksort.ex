defmodule QuickSort do
  def sort([]), do: []
  def sort([pivot | []]), do: [pivot]
  def sort([pivot | tail]) do
    lower = Enum.filter(tail, fn i -> i <= pivot end)
    higher = Enum.filter(tail, fn i -> i > pivot end)
    sort(lower) ++ [pivot] ++ sort(higher)
  end
end
