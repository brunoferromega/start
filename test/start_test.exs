defmodule STARTTest do
  use ExUnit.Case
  doctest START

  test "greets the world" do
    assert START.hello() == :world
  end
end
