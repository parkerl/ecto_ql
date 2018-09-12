defmodule EctoQl.MixProject do
  use Mix.Project

  def project do
    [
      app: :ecto_ql,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {EctoQl.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:faker, "~> 0.10.0"},
      {:ecto, git: "https://github.com/elixir-lang/ecto.git"},
      {:postgrex, "~> 0.14.0-dev",
       [
         git: "https://github.com/elixir-ecto/postgrex.git",
         override: true
       ]}
    ]
  end
end
