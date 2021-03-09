defmodule Calculator do
  alias Calculator.SoapImpl

  def sum(a, b) do
    SoapImpl.sum(a, b)
  end
end
