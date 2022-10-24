def start_link(arg) do
  GenServer.start_link(__MODULE__, arg, name: GenServer.Test)
end
