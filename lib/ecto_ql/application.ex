defmodule EctoQl.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      {EctoQl.Repo, []}
    ]

    opts = [strategy: :one_for_one, name: EctoQl.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
