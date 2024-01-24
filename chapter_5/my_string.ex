defmodule MyString do
  def capitalize_words(title) do
    title 
    |> String.split
    |> Enum.map(&String.capitalize/1)
    |> Enum.join(" ")
  end
end
