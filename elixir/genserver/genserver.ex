defmodule GenServer.Test do
  use GenServer
  
  # API 

  def start_link(arg) do
    GenServer.start_link(__MODULE__, arg)
  end

  # OTP

  @impl true
  def init(_args) do
    state = 42
    {:ok, state}
  end

end
