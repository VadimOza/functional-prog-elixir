defmodule Sum do 
  def sum(0), do: 0
  def sum(n) do 
    sump(n, 0)
  end

  defp sump(0, current_sum), do: current_sum
  defp sump(n, current_sum) do 
    sump(n - 1, current_sum + n)
  end
end
