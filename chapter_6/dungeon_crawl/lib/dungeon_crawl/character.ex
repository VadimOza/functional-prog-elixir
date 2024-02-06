defmodule DungeonCrawl.Character do
  defstruct name: nil,
            description: nil,
            hit_points: 0,
            max_hit_points: 0,
            attack_description: nil,
            damage_range: nil

  defimpl String.Chars, for: DungeonCrawl.Character do
    def to_string(character), do: character.nametask
  end

  @type t :: %DungeonCrawl.Character{
          name: String.t(),
          description: String.t(),
          hit_points: non_neg_integer,
          max_hit_points: non_neg_integer,
          attack_description: String.t(),
          damage_range: Range.t()
        }

  def take_damage(character, damage) do
    new_hit_points = max(character.hit_points - damage, 0)
    %{character | hit_points: new_hit_points}
  end

  def heal(character, healing_value) do
    new_hit_points = min(character.hit_points + healing_value, character.max_hit_points)
    %{character | hit_points: new_hit_points}
  end

  def current_stat(character) do
    "Player Stats \nHP: #{character.hit_points}/#{character.max_hit_points}"
  end
end
