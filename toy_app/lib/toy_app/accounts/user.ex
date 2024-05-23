defmodule ToyApp.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias ToyApp.Posts.Micropost

  schema "users" do
    field :name, :string
    field :age, :integer
    has_many :microposts, Micropost

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :age])
    |> validate_required([:name, :age])
  end
end
