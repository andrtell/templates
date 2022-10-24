def cast(pid, arg) do
  GenServer.cast(pid, {:message, arg})
end
