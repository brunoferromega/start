# Priotizy empty list
colleted = Enum.into(1..5, [])
IO.inspect(colleted)
# teste
require Integer
IO.inspect for x <- 1..10, Integer.is_even(x), do: x * x
