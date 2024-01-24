defmodule DungeonCrawl.Cli.BaseCommands do
  alias Mix.Shell.IO, as: Shell

  def display_options(names) do
    names
    |> Enum.with_index(1)
    |> Enum.each(fn {option, index} ->
      Shell.info("#{index} - #{DungeonCrawl.Display.info(option)}")
    end)

    names 
  end

  def generate_question(options) do
    options = Enum.join(1..Enum.count(options), ", ")
    "Which one? [#{options}]"
  end

  def parse_answer(answer) do
    {option, _} = Integer.parse(answer)
    option - 1
  end
end
