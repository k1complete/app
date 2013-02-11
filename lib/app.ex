defmodule App do
  use Application.Behaviour

  def start do
    Application.Behaviour.start(:app)
  end
  # See http://elixir-lang.org/docs/stable/Application.Behaviour.html
  # for more information on OTP Applications
  def start(_type, args) do
    # args is arg parameter in .app file
    App.Supervisor.start_link(args)
  end
end
