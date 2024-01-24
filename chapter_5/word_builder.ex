defmodule WordBuilder do
  def build(alphabet, positions) do
    partial = fn at -> String.at(alphabet, at) end
    letters = Enum.map(positions, partial)
    Enum.join(letters)
  end
end
