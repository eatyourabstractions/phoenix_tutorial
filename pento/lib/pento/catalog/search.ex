defmodule Pento.Catalog.Search do

  defstruct [:sku]

  @types %{sku: :integer}

  import Ecto.Changeset

  def sku_policy(%__MODULE__{} = prompt, attrs \\ %{}) do
    {prompt, @types}
    |> cast(attrs, Map.keys(@types))
    |> validate_change(:sku, fn :sku, sku ->
      num_len = Integer.to_charlist(sku) |> length
      if num_len <= 3 do
        [prompt: "the length of the SKU must be longer than 3"] # name of the field to be updated
      else
        []
      end

      end)

  end

end
