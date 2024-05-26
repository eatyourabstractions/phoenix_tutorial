defmodule SampleAppWeb.StaticPageController do
  use SampleAppWeb, :controller

  def home(conn, _params) do
    render(conn, "home.html")
  end

  def help(conn, _params) do
    render(conn, "help.html")
  end

  def about(conn, _params) do
    render(conn, "about.html")
  end

  def contact(conn, _params) do
    render(conn, "contact.html")
  end

  def inspect(conn, _params) do
    conn
    |> assign(:headline, "This is a test headline")
    |> render("inspect.html")
  end

  # def playground(conn, _params) do
  #   headline = "This is a test headline"

  #   conn
  #   |> assign(:headline, headline)
  #   |> render("playground.html")
  # end

  def playground(conn, _params) do
    headline = "This is a test headline"
    {:ok, timestamp} = DateTime.now("Etc/UTC")

    conn
    |> assign(:headline, headline)
    |> assign(:timestamp, timestamp)
    |> render("playground.html")
  end

  def ping(conn, _params) do
    render(conn, "ping.html")
  end

  def pong(conn, _params) do
    render(conn, "pong.html")
  end

end
