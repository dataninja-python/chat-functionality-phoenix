defmodule ApiApp.ItemsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ApiApp.Items` context.
  """

  @doc """
  Generate a item.
  """
  def item_fixture(attrs \\ %{}) do
    {:ok, item} =
      attrs
      |> Enum.into(%{
        item-name: "some item-name",
        item-trait: "some item-trait"
      })
      |> ApiApp.Items.create_item()

    item
  end
end
