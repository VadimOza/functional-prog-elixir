defmodule RPG do 
  def points(character) do 
    %{strength: strength, dexterity: dexterity, intelligence: intelligence} = character
    %{strength: strength * 2, dexterity: dexterity * 2, intelligence: intelligence * 2}
  end
end
