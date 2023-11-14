defmodule ApiApp.Items.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :"item-name", :string
    field :"item-trait", :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:"item-name", :"item-trait"])
    |> validate_required([:"item-name", :"item-trait"])
  end
end
