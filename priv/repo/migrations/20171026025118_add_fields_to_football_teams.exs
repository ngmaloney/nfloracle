defmodule Nfloracle.Repo.Migrations.AddFieldsToFootballTeams do
  use Ecto.Migration

  def change do
    alter table(:football_teams) do 
      add :abbreviation, :string
      add :conference, :string
      add :division, :string
    end
  end
end
