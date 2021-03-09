defmodule Calculator.SoapImpl do
  @moduledoc """
  The implementation of Calculator.Client behaviour to execute the calculator
  through the Calculator SOAP webservice.
  """

  @behaviour Calculator.Client

  @doc """
  Receives 2 integers and returns the sum of them into a ok-tuple.

  ## Example

      iex> sum(2, 2)
      {:ok, 4}
  """
  @spec sum(a :: Integer.t(), b :: Integer.t()) :: {:ok, result :: Integer.t()}
  def sum(a, b) do
    with {:ok, wsdl} <- load_config(),
         {:ok, %Soap.Response{} = response} <- Soap.call(wsdl, "Add", map_args(a, b)),
         %{AddResponse: %{AddResult: result}} <- Soap.Response.parse(response) do
      String.to_integer(result)
    end
  end

  defp map_args(a, b), do: %{intA: a, intB: b}

  defp load_config() do
    Soap.init_model(wsdl_path(), :url)
  end

  defp wsdl_path do
    "http://dneonline.com/calculator.asmx?wsdl"
  end
end
