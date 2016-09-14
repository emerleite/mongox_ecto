defmodule Simple.Mixfile do
  use Mix.Project

  def project do
    [app: :simple,
     version: "0.0.1",
     deps: deps]
  end

  def application do
    [mod: {Simple.App, []},
     applications: [:mongox_ecto, :ecto]]
  end

  defp deps do
    [{:mongox_ecto, path: "../.."},
     {:ecto, path: "../../deps/ecto", override: true},
     {:mongodb, path: "../../deps/mongox", override: true}]
  end
end
