defmodule App.Supervisor do
  use Supervisor.Behaviour

  def start_link(state) do
    :supervisor.start_link(__MODULE__, [state])
  end

  def init([state]) do
    children = [
      # Define workers and child supervisors to be supervised
      # worker(App.Worker, [])
      worker(App.Server, [state])
    ]

    # See http://elixir-lang.org/docs/stable/Supervisor.Behaviour.html
    # for other strategies and supported options
    supervise children, strategy: :one_for_one
  end
end
