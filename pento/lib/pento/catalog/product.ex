defmodule Pento.Catalog.Product do
  use Ecto.Schema
  import Ecto.Changeset

  alias Pento.Survey.Rating

  schema "products" do
    field :name, :string
    field :description, :string
    field :unit_prince, :float
    field :sku, :integer
    field :image_upload, :string

    has_many :ratings, Rating

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:name, :description, :unit_prince, :sku, :image_upload])
    |> validate_required([:name, :description, :unit_prince, :sku])
    |> unique_constraint(:sku)
    |> validate_number(:unit_prince, greater_than: 0.0)
  end
end
