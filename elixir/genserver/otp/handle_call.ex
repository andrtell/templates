@impl true
def handle_call({:message, arg}, _from, state) do
  reply = :ok
  {:reply, reply, state}
end
