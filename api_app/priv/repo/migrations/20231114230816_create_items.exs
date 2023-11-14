defmodule ApiApp.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :"item-name", :string
      add :"item-trait", :string

      timestamps(type: :utc_datetime)
    end
  end
end
