defmodule ClockWeb.UserLive.Index do
  use ClockWeb, :live_view

  alias Clock.Demo
  alias Clock.Demo.User

  @impl true
  def mount(_params, _session, socket) do
    {:ok, stream(socket, :users, Demo.list_users())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit User")
    |> assign(:user, Demo.get_user!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New User")
    |> assign(:user, %User{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Users")
    |> assign(:user, nil)
  end

  @impl true
  def handle_info({ClockWeb.UserLive.FormComponent, {:saved, user}}, socket) do
    {:noreply, stream_insert(socket, :users, user)}
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    user = Demo.get_user!(id)
    {:ok, _} = Demo.delete_user(user)

    {:noreply, stream_delete(socket, :users, user)}
  end
end
