defmodule Nfloracle.Football.Teams do
  use Ecto.Schema
  import Ecto.Changeset
  alias Nfloracle.Football.Teams


  schema "football_teams" do
    field :city, :string
    field :logo, :string
    field :name, :string
    field :abbreviation, :string
    field :conference, :string
    field :division, :string

    timestamps()
  end

  @doc false
  def changeset(%Teams{} = teams, attrs) do
    teams
    |> cast(attrs, [:name, :city, :logo, :abbreviation, :conference, :division])
    |> validate_required([:name, :city, :logo, :abreviation, :conference, :division])
  end
end
