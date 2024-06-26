defmodule ClockWeb.CounterController do
  use ClockWeb, :controller

  alias Clock.Demo
  alias Clock.Demo.Counter

  def index(conn, _params) do
    counter = Demo.list_counter()
    render(conn, :index, counter_collection: counter)
  end

  def new(conn, _params) do
    changeset = Demo.change_counter(%Counter{})
    render(conn, :new, changeset: changeset)
  end

  def create(conn, %{"counter" => counter_params}) do
    case Demo.create_counter(counter_params) do
      {:ok, counter} ->
        conn
        |> put_flash(:info, "Counter created successfully.")
        |> redirect(to: ~p"/counter/#{counter}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :new, changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    counter = Demo.get_counter!(id)
    render(conn, :show, counter: counter)
  end

  def edit(conn, %{"id" => id}) do
    counter = Demo.get_counter!(id)
    changeset = Demo.change_counter(counter)
    render(conn, :edit, counter: counter, changeset: changeset)
  end

  def update(conn, %{"id" => id, "counter" => counter_params}) do
    counter = Demo.get_counter!(id)

    case Demo.update_counter(counter, counter_params) do
      {:ok, counter} ->
        conn
        |> put_flash(:info, "Counter updated successfully.")
        |> redirect(to: ~p"/counter/#{counter}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :edit, counter: counter, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    counter = Demo.get_counter!(id)
    {:ok, _counter} = Demo.delete_counter(counter)

    conn
    |> put_flash(:info, "Counter deleted successfully.")
    |> redirect(to: ~p"/counter")
  end
end
