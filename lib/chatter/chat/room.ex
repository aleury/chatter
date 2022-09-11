defmodule Chatter.Chat.Room do
  use Ecto.Schema
  import Ecto.Changeset

  alias __MODULE__

  schema "chat_rooms" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Room{} = room, attrs) do
    room
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
