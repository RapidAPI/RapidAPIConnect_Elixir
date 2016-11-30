defmodule RapidApi.Mixfile do
  use Mix.Project

  def project do
    [app: :rapid_api,
     version: "0.1.2",
     elixir: "~> 1.3",
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    [applications: [:httpotion, :poison]]
  end

  defp deps do
    [
      {:httpotion, "~> 3.0.2"},
      {:poison, "~> 3.0"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    """
    Easily connect to RapidAPI blocks.
    """
  end
  
  defp package do
    [
      name: :rapid_api,
      licenses: ["MIT"],
      maintainers: ["Lewis Nitzberg"],
      links: %{"GitHub" => "https://github.com/Spyes/RapidAPIConnect_Elixir"}
    ]
  end
end
