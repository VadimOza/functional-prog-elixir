defmodule EnchanterShop do
  def test_data do
    [
      %{title: "Longsword", price: 50, magic: false},
      %{title: "Healing Potion", price: 60, magic: true},
      %{title: "Rope", price: 10, magic: false},
      %{title: "Dragon's Sper", price: 100, magic: true}
    ]
  end

  @enchanter_name "Edwin"

  def enchant_for_sale(list) do
    list
    |> Enum.map(&enchant_item/1)
  end

  defp enchant_item(item) do
    if(item.magic == true) do
      %{title: "#{@enchanter_name}'s #{item.title}", price: item.price * 3, magic: true}
    else
      item
    end
  end
end
