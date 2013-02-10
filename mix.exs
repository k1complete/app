defmodule App.Mixfile do
  use Mix.Project

  def project do
    [ app: :app,
      version: "0.0.2",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [mod: { App, [] }]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    []
  end
end
