defmodule Chapter2 do 
  def boxes(amount) do 
    big = div(amount, 50)
    reminder = amount - big * 50
    IO.puts "reminder #{reminder}"
    medium = div(reminder, 20)
    reminder = reminder - medium  * 20
    small = div(reminder, 5)
    reminder = reminder - small * 5
    %{big: big, medium: medium, small: small, remining_matchsticks: reminder}
  end
end
