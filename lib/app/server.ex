defmodule App.Server do
  use GenServer.Behaviour

  def start_link(arg) do
    :gen_server.start_link({:local, :app_srv}, __MODULE__, arg, [])
  end
  def init(arg) do
    {:ok, arg}
  end
  def handle_call({:ping}, _from, state) do
    {:reply, {:pong}, state}
  end
  def handle_call(request, from, state) do
    super(request, from, state)
  end
end
