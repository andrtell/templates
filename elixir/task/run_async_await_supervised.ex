task =
  Task.Supervisor.async(MyApp.TaskSupervisor, fn ->
    # Do something
  end)

Task.await(task)
