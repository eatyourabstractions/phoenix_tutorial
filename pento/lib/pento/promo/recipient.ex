
defmodule Pento.Promo.Recipient do

  defstruct [:first_name, :email]
  # defstruct first_name: "john", email: "john@doe.com"

  @types %{first_name: :string, email: :string}

  import Ecto.Changeset

  def changeset(%__MODULE__{} = user, attrs) do
    {user, @types}
    |> cast(attrs, Map.keys(@types))
    |> validate_required([:first_name, :email])
    |> validate_format(:email, ~r/@/)
  end
end
