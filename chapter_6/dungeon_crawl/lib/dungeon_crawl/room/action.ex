defmodule DungeonCrawl.Room.Action do
  alias DungeonCrawl.Room.Action

  @type t :: %Action{id: atom, label: String.t()}

  defstruct label: nil, id: nil

  def forward, do: %Action{id: :forward, label: "Move forward."}
  def rest, do: %Action{id: :rest, label: "Take a better look and rest."}
  def search, do: %Action{id: :search, label: "Search the room."}
end
