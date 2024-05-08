defmodule Start do
  def hello(name, greeting),
    do: fn
      ^name -> "#{greeting} #{name}"
      _ -> "I don't kown you!"
    end

  def say_something,
    do:
      (
        IO.puts("Testing multi lines")
        IO.puts("My name is Bruno")
      )

  def sqrt(value), do: value * value

  def read_file(path) do
    finded = File.open(path)

    case finded do
      {:ok, file} -> "Read data: #{IO.read(file, :line)}"
      {_, err} -> "Error: #{:file.format_error(err)}"
    end
  end

  # Ex: 2
  @spec handle_nums(Integer.t(), Integer.t(), Integer.t()) :: String.t()
  def handle_nums(firs, sec, thir) do
    cond do
      firs == 0 and sec == 0 -> "FizzBuzz"
      firs == 0 -> "Fizz"
      sec == 0 -> "Buzz"
      true -> Integer.to_string(thir)
    end
  end

  # Ex: 2
  def aside_rest(n), do: handle_nums(rem(n, 3), rem(n, 5), n)

  def fac(0), do: 1
  def fac(n), do: n * fac(n - 1)

  def rec_sum(0), do: 0
  def rec_sum(n), do: n + rec_sum(n - 1)
end
