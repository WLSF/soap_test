defmodule SoapTestTest do
  use ExUnit.Case
  doctest SoapTest

  test "greets the world" do
    assert SoapTest.hello() == :world
  end
end
