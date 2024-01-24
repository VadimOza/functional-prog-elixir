defmodule Fibonacci do
  def up_to(n) do
    Stream.unfold({0, 1}, fn {a, b} -> {a, {b, a + b}} end)
    |> Stream.take(n + 1)
    |> Enum.reduce(fn elem, _acc -> elem end)
  end
end

# 1 1 2 3 5 8
