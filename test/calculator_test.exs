defmodule CalculatorTest do
  use ExUnit.Case
  doctest Calculator

  describe "Sum" do
    test "returns 4 when sum 2 + 2" do
      assert Calculator.sum(2, 2) == 4
    end
  end
end
