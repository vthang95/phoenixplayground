defmodule Phxplayground.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Phxplayground.Accounts.User


  schema "users" do
    field :email, :string
    field :password_hash, :string
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:username, :password_hash, :email])
    |> validate_required([:username, :password_hash, :email])
    |> unique_constraint(:email)
  end
end
