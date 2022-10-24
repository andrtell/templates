def start_link({key, arg}) do
  GenServer.start_link(__MODULE__, arg, name: {
      :via,
      Registry,
      {Registry.Test, key}
  })
end
