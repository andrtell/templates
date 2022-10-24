def call(pid, arg) do
  GenServer.call(pid, {:message, arg})
end
