defmodule DungeonCrawl.Room do
  alias DungeonCrawl.Room
  alias DungeonCrawl.Room.Triggers

  import DungeonCrawl.Room.Action

  defstruct description: nil, actions: [], trigger: nil, probability: 1

  def all,
    do: duplicate_rooms(list_of_rooms())

  defp duplicate_rooms(rooms), do: Enum.flat_map(rooms, &Stream.duplicate(&1, &1.probability))
    |> Enum.to_list()

  defp list_of_rooms,
    do: [
      %Room{
        description: "You found a quiet place, Looks safe for a little nap.",
        actions: [forward()],
        trigger: Triggers.Exit,
        probability: 1 
      },
      %Room{
        description: "You can see an enemy blocking your path",
        actions: [forward()],
        trigger: Triggers.Enemy,
        probability: 3
      },
    ]

  defimpl String.Chars, for: DungeonCrawl.Room.Action do
    def to_string(action), do: action.label
  end
end
