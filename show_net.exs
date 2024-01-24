defmodule TaxCalculator do 
def some(:error), do: "Invalid input"
def some({amount, _}) do 
  tax = calculate_tax(amount)
  amount_with_tax = if tax = 0 do 
    amount 
  else 
    amount - (amount * tax)
  end
  "Your net is #{amount_with_tax} tax: #{tax * 100}%"
end


  def calculate_tax(income) do
    cond do
      income <= 2000 -> 0
      income <= 3000 -> 0.05
      income <= 6000 -> 0.1
      income > 6000 -> 0.15
    end
  end
end


input = IO.gets "Type your sallary\n" 
result = Integer.parse(input)

IO.puts TaxCalculator.some(result)
