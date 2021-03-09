defmodule Calculator.Client do
  @moduledoc """
  Handles the interface definition of what the Calculator Clients
  should implement to be executed properly.
  """

  @callback sum(number1 :: Integer.t(), number2 :: Integer.t()) :: {:ok, result :: Integer.t()}
end
