defmodule ChatWeb.HomeLive do
  use ChatWeb, :live_view

  def mount(_paras, _session, socket) do
    {:ok, socket}
  end

end