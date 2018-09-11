defmodule EctoQl.Repo do
  use Ecto.Repo,
    otp_app: :ecto_ql,
    adapter: Ecto.Adapters.Postgres
end
