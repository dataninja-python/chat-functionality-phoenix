defmodule DemoWeb.PageLive do
  use DemoWeb, :live_view

    def mount(_params, _session, socket) do
      {:ok, assign(socket, number: 7)}
    end

    def render(assigns) do
      ~H"""
      <%= @number %>
      <hr>
      <strong>Hello World</strong>
      <.button phx-click="add">Add</.button>

      <.ignore>
        <%= test("") %>
      </.ignore>
      <.test />
      """
    end

    def handle_event(assigns) do
      ~H"""
      This is a test
      """
    end

    def test(assigns) do
      ~H"""
      This is a test
      """
    end

end