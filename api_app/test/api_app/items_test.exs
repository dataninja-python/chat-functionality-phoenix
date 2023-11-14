defmodule ApiApp.ItemsTest do
  use ApiApp.DataCase

  alias ApiApp.Items

  describe "items" do
    alias ApiApp.Items.Item

    import ApiApp.ItemsFixtures

    @invalid_attrs %{"item-name": nil, "item-trait": nil}

    test "list_items/0 returns all items" do
      item = item_fixture()
      assert Items.list_items() == [item]
    end

    test "get_item!/1 returns the item with given id" do
      item = item_fixture()
      assert Items.get_item!(item.id) == item
    end

    test "create_item/1 with valid data creates a item" do
      valid_attrs = %{"item-name": "some item-name", "item-trait": "some item-trait"}

      assert {:ok, %Item{} = item} = Items.create_item(valid_attrs)
      assert item.item-name == "some item-name"
      assert item.item-trait == "some item-trait"
    end

    test "create_item/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Items.create_item(@invalid_attrs)
    end

    test "update_item/2 with valid data updates the item" do
      item = item_fixture()
      update_attrs = %{"item-name": "some updated item-name", "item-trait": "some updated item-trait"}

      assert {:ok, %Item{} = item} = Items.update_item(item, update_attrs)
      assert item.item-name == "some updated item-name"
      assert item.item-trait == "some updated item-trait"
    end

    test "update_item/2 with invalid data returns error changeset" do
      item = item_fixture()
      assert {:error, %Ecto.Changeset{}} = Items.update_item(item, @invalid_attrs)
      assert item == Items.get_item!(item.id)
    end

    test "delete_item/1 deletes the item" do
      item = item_fixture()
      assert {:ok, %Item{}} = Items.delete_item(item)
      assert_raise Ecto.NoResultsError, fn -> Items.get_item!(item.id) end
    end

    test "change_item/1 returns a item changeset" do
      item = item_fixture()
      assert %Ecto.Changeset{} = Items.change_item(item)
    end
  end
end
