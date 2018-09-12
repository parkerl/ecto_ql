Logger.configure(level: :info)
ExUnit.start()

Mix.Task.run("ecto.create", ~w(-r EctoQl.Repo --quiet))
Mix.Task.run("ecto.migrate", ~w(-r EctoQl.Repo --quiet))
Ecto.Adapters.SQL.Sandbox.mode(EctoQl.Repo, :manual)
