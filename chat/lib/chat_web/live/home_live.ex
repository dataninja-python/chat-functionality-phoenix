defmodule ChatWeb.HomeLive do
  use ChatWeb,:live_view

  def mount(_params, _session, socket) do
    IO.puts("running the mount function in home_live.ex")
    {:ok, socket}
  end

end