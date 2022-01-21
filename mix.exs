defmodule TeslaKeys.MixProject do
  use Mix.Project

  def project do
    [
      app: :tesla_keys,
      version: "0.1.3",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      docs: docs(),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:tesla, "~> 1.0"},
      {:recase, "~> 0.7"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp description do
    "Aggregate of useful middlewares to manipulate body keys"
  end

  defp package do
    [
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/wigny/tesla_keys"}
    ]
  end

  defp docs do
    [
      extras: Path.wildcard("guides/*") ++ ["README.md": [title: "Overview"]],
      groups_for_extras: [guides: ~r/guides/],
      main: "readme"
    ]
  end
end
