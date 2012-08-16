defmodule App.MixFile do
  use Mix.Project

  def project do
    [
      app: :app,
      version: "0.0.1",
      deps: [
        # Add dependencies here
        # { :foo_bar, "0.1", git: "https://github.com/foo/bar.git" }
      ]
    ]
  end

  # Configuration for the OTP application
  def application do
    [mod: {App, []},
     description: 'minimum app']
  end
end
