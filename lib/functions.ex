defmodule Functions do
  @position "First"
  def get_first, do: @position
  @position "Second"
  def get_second, do: @position

  def default_params(a, b \\ 2, c \\ 3, d) do
    IO.inspect([a, b, c, d])
  end

  def neo_default(a, b \\ 9)

  def neo_default(a, b) when is_list(a) do
    "You said #{b} with a list"
  end

  def neo_default(a, b), do: "You passes #{a} and #{b}"

  def get_list() do
    1..10
    |> Enum.map(&(&1 * &1))
    |> Enum.filter(&(&1 < 40))
  end
end
