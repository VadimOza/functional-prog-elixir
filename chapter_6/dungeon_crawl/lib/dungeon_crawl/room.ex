defmodule DungeonCrawl.Room do
  alias DungeonCrawl.Room

  import DungeonCrawl.Room.Action

  defstruct description: nil, actions: []

  def all,
    do: [
      %Room{
        description: "You found a quiet place, Looks safe for a little nap.",
        actions: [forward(), rest()]
      }
    ]

  defimpl String.Chars, for: DungeonCrawl.Room.Action do
    def to_string(action), do: action.label
  end
end
