defmodule TestSuper.MixProject do
  use Mix.Project

  def project do
    [
      app: :test_super,
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
      mod: {TestSuper.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:sparql_client, "~> 0.2.1"},
      {:hackney, "~> 1.6"}
    ]
  end
end
