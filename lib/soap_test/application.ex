defmodule SoapTest.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    Application.put_env(:soap, :globals, version: "1.1")
    Supervisor.start_link(children(), opts())
  end

  defp children, do: []

  defp opts do
    [
      strategy: :one_for_one,
      name: SoapTest.Supervisor
    ]
  end
end
