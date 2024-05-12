defmodule Recursive do
  def fac(0), do: 1
  def fac(n), do: n * fac(n - 1)

  def rec_sum(0), do: 0

  def rec_sum(n) when is_integer(n) and n > 0 do
    n + rec_sum(n - 1)
  end

  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))

  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([head | tail]), do: [head * head | square(tail)]

  def map_sum([], _fun), do: 0
  def map_sum([head | tail], fun), do: fun.(head) + map_sum(tail, fun)
end
