defmodule Tax do 
  def calculate_tax(income) do 
    cond do 
      income <= 2000 -> 0
      income <= 3000 -> 5
      income <= 6000 -> 10
      income > 6000 -> 15
    end
  end
end
