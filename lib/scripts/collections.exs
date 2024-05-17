# Priotizy empty list
colleted = Enum.into(1..5, [])
IO.inspect(colleted)
# Comprehencion
require Integer
IO.inspect for x <- 1..10, Integer.is_even(x), do: x * x
# Nested iteration
IO.inspect for x <- [1, 2], y <- [5, 6], do: {x, y}

# List Chars/Integers -> Single Quoted String
str = ~c"wombat"
IO.puts(:io.format("~w~n", [str]))
# Test
IO.puts("blablbla")
