defmodule Mongo.Ecto.Mixfile do
  use Mix.Project

  @version "0.1.6"

  def project do
    [app: :mongox_ecto,
     version: @version,
     elixir: "~> 1.0",
     deps: deps,
     test_coverage: [tool: ExCoveralls],
     description: description,
     package: package]
  end

  def application do
    [applications: [:ecto, :mongox]]
  end

  defp deps do
    [
      {:mongox, "0.1.3"},
      {:ecto, "~> 1.0"},
      {:dialyze, "~> 0.2.0", only: :dev},
      {:excoveralls, "~> 0.5", only: :test},
      {:ex_doc, github: "elixir-lang/ex_doc", only: :dev}
    ]
  end

  defp description do
    """
    MongoDB adapter for Ecto
    """
  end

  defp package do
    [maintainers: ["Emerson Macedo"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/emerleite/mongox_ecto"},
     files: ~w(mix.exs README.md CHANGELOG.md lib)]
  end
end
