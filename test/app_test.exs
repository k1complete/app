Code.require_file "../test_helper.exs", __FILE__

defmodule AppTest do
  use ExUnit.Case

  test "the truth" do
    assert true
  end
  test "communication" do
    assert {:pong} = :gen_server.call(:app_srv, {:ping})
  end
end
