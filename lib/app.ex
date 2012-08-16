defmodule App do
  def start do
    :ok = :application.start(:app)
  end
  def start(_type, arg) do
   :gen_server.start_link({:local, :app}, AppSrv, arg, [])
  end
end
defmodule AppSrv do
  def init(arg) do
    :error_logger.info_report('started!') # ok!
#    IO.puts("started!")  # hangup!
    {:ok, []}
  end
  def handle_call({:ping}, _from, state) do
    {:reply, {:pong}, state}
  end
end