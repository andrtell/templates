@impl true
def handle_cast({:message, arg}, state) do
  {:noreply, state}
end
