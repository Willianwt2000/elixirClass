defmodule TestRoyectTest do
  use ExUnit.Case
  doctest TestRoyect

  test "greets the world" do
    assert TestRoyect.hello() == :world
  end
end
