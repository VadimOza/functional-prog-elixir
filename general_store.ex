defmodule GeneralStore do 
  def filter_magical([], _), do: []
  def filter_magical([head = %{magic: current_value} | tail], magic: value) when current_value == value do  
    [head | filter_magical(tail, magic: value)]
  end
  def filter_magical([_ | tail], magic: value), do: filter_magical(tail, magic: value)

  def test_data do 
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing Potion", price: 60, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Sper", price: 100 , magic: true},
    ]
  end
end
