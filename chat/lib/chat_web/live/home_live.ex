defmodule ChatWeb.HomeLive do
  use ChatWeb, :live_view

  def mount(_paras, _session, socket) do
    {:ok, socket}
  end

  def handle_event("goto_topic", %{"changeset" => %{"topic_name" => topic_name}}, socket) do
    topic_link = "/" <> topic_name
    push_redirect(socket, to: topic_link, external: true)
    {:noreply, socket}
  end

end