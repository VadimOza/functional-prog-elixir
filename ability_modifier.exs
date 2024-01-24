user_input = IO.gets "Write your ability score\n"
result = case Integer.parse(user_input) do
	:error -> "Invlid ability score: #{user_input}"
	{ability_score, _} -> "Your ability modifier is #{(ability_score - 10) / 2}"
end

IO.puts result
