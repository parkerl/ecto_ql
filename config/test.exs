use Mix.Config

config :ecto_ql, EctoQl.Repo,
  pool: Ecto.Adapters.SQL.Sandbox,
  database: "ecto_ql_repo",
  hostname: "localhost"

config :ecto_ql, ecto_repos: [EctoQl.Repo]
