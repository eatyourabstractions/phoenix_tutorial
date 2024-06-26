defmodule Clock.Demo do
  @moduledoc """
  The Demo context.
  """

  import Ecto.Query, warn: false
  alias Clock.Repo

  alias Clock.Demo.User

  @doc """
  Returns the list of users.

  ## Examples

      iex> list_users()
      [%User{}, ...]

  """
  def list_users do
    raise "TODO"
  end

  @doc """
  Gets a single user.

  Raises if the User does not exist.

  ## Examples

      iex> get_user!(123)
      %User{}

  """
  def get_user!(id), do: raise "TODO"

  @doc """
  Creates a user.

  ## Examples

      iex> create_user(%{field: value})
      {:ok, %User{}}

      iex> create_user(%{field: bad_value})
      {:error, ...}

  """
  def create_user(attrs \\ %{}) do
    raise "TODO"
  end

  @doc """
  Updates a user.

  ## Examples

      iex> update_user(user, %{field: new_value})
      {:ok, %User{}}

      iex> update_user(user, %{field: bad_value})
      {:error, ...}

  """
  def update_user(%User{} = user, attrs) do
    raise "TODO"
  end

  @doc """
  Deletes a User.

  ## Examples

      iex> delete_user(user)
      {:ok, %User{}}

      iex> delete_user(user)
      {:error, ...}

  """
  def delete_user(%User{} = user) do
    raise "TODO"
  end

  @doc """
  Returns a data structure for tracking user changes.

  ## Examples

      iex> change_user(user)
      %Todo{...}

  """
  def change_user(%User{} = user, _attrs \\ %{}) do
    raise "TODO"
  end

  alias Clock.Demo.Counter

  @doc """
  Returns the list of counters.

  ## Examples

      iex> list_counters()
      [%Counter{}, ...]

  """
  def list_counters do
    raise "TODO"
  end

  @doc """
  Gets a single counter.

  Raises if the Counter does not exist.

  ## Examples

      iex> get_counter!(123)
      %Counter{}

  """
  def get_counter!(id), do: raise "TODO"

  @doc """
  Creates a counter.

  ## Examples

      iex> create_counter(%{field: value})
      {:ok, %Counter{}}

      iex> create_counter(%{field: bad_value})
      {:error, ...}

  """
  def create_counter(attrs \\ %{}) do
    raise "TODO"
  end

  @doc """
  Updates a counter.

  ## Examples

      iex> update_counter(counter, %{field: new_value})
      {:ok, %Counter{}}

      iex> update_counter(counter, %{field: bad_value})
      {:error, ...}

  """
  def update_counter(%Counter{} = counter, attrs) do
    raise "TODO"
  end

  @doc """
  Deletes a Counter.

  ## Examples

      iex> delete_counter(counter)
      {:ok, %Counter{}}

      iex> delete_counter(counter)
      {:error, ...}

  """
  def delete_counter(%Counter{} = counter) do
    raise "TODO"
  end

  @doc """
  Returns a data structure for tracking counter changes.

  ## Examples

      iex> change_counter(counter)
      %Todo{...}

  """
  def change_counter(%Counter{} = counter, _attrs \\ %{}) do
    raise "TODO"
  end

  alias Clock.Demo.Counter

  @doc """
  Returns the list of counter.

  ## Examples

      iex> list_counter()
      [%Counter{}, ...]

  """
  def list_counter do
    raise "TODO"
  end

  @doc """
  Gets a single counter.

  Raises if the Counter does not exist.

  ## Examples

      iex> get_counter!(123)
      %Counter{}

  """
  def get_counter!(id), do: raise "TODO"

  @doc """
  Creates a counter.

  ## Examples

      iex> create_counter(%{field: value})
      {:ok, %Counter{}}

      iex> create_counter(%{field: bad_value})
      {:error, ...}

  """
  def create_counter(attrs \\ %{}) do
    raise "TODO"
  end

  @doc """
  Updates a counter.

  ## Examples

      iex> update_counter(counter, %{field: new_value})
      {:ok, %Counter{}}

      iex> update_counter(counter, %{field: bad_value})
      {:error, ...}

  """
  def update_counter(%Counter{} = counter, attrs) do
    raise "TODO"
  end

  @doc """
  Deletes a Counter.

  ## Examples

      iex> delete_counter(counter)
      {:ok, %Counter{}}

      iex> delete_counter(counter)
      {:error, ...}

  """
  def delete_counter(%Counter{} = counter) do
    raise "TODO"
  end

  @doc """
  Returns a data structure for tracking counter changes.

  ## Examples

      iex> change_counter(counter)
      %Todo{...}

  """
  def change_counter(%Counter{} = counter, _attrs \\ %{}) do
    raise "TODO"
  end
end
