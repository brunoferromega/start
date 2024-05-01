defmodule START do
  @moduledoc """
  Documentation for `START`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> START.hello()
      :world

  """
  def hello do
    :world
  end

  def sqrt(value), do: value * value

  def read_files do
    content = "let's go!"

    lp =
      with {:ok, file} <- File.open("/home/bruno/Projects/Elixir/start/test.txt", [:read]),
           content = IO.read(file, :all),
           :ok = File.close(file),
           [_, uid, gid] = Regex.run(~r/^_lp:.*?:(\d+):(\d+)/m, content),
           do: "​​Group: ​#{gid} User: ​​#{uid}​​"

    IO.puts(lp)
    IO.puts(content)
  end
end
