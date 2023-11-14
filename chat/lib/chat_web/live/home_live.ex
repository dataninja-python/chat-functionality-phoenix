defmodule HomeLive do
  use ChatWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    Chat App Online
    """
  end
end