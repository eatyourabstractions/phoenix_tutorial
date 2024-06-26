defmodule Clock.DemoFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Clock.Demo` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{

      })
      |> Clock.Demo.create_user()

    user
  end

  @doc """
  Generate a counter.
  """
  def counter_fixture(attrs \\ %{}) do
    {:ok, counter} =
      attrs
      |> Enum.into(%{

      })
      |> Clock.Demo.create_counter()

    counter
  end
end
