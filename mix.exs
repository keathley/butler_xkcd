defmodule Butler.XKCD.Mixfile do
  use Mix.Project

  def project do
    [app: :butler_xkcd,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:butler, "~> 0.6.2"}]
  end

  defp description do
    """
    A Butler plugin for showing the latest xkcd comic.
    """
  end

  defp package do
    [
      maintainers: ["Craig Lyons"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/craiglyonsdev/butler_xkcd"}
    ]
  end
end
