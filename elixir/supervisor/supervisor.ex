defmodule MyApp.Supervisor do
  use Supervisor

  # API

  def start_link(_) do
    Supervisor.start_link(__MODULE__, [], name: __MODULE__)
  end

  # OTP

  @impl true
  def init(_) do
    children = [
      
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end
