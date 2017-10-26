defmodule Nfloracle.Repo.Migrations.CreateFootballTeams do
  use Ecto.Migration

  def change do
    create table(:football_teams) do
      add :name, :string
      add :city, :string
      add :logo, :string

      timestamps()
    end

  end
end
