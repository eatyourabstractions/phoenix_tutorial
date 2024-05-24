defmodule SampleAppWeb.StaticPageControllerTest do
  use SampleAppWeb.ConnCase

  @base_title "Phoenix Tutorial Sample App"

  test "should get root", %{conn: conn} do
    conn =
      conn
      |> get(Routes.root_path(conn, :home))

    html_response(conn, 200)
    |> assert_select("title", "Home | #{@base_title}")
  end



  test "should get home", %{conn: conn} do
    conn =
      conn
      |> get(Routes.static_page_path(conn, :home))

    # assert html_response(conn, 200)
    html_response(conn, 200)
    |> assert_select("title", "Home | #{@base_title}")
  end

  test "should get help", %{conn: conn} do
    conn =
      conn
      |> get(Routes.static_page_path(conn, :help))

    # assert html_response(conn, 200)
    html_response(conn, 200)
    |> assert_select("title", "Help | #{@base_title}")
  end

  test "should get about", %{conn: conn} do
    conn =
      conn
      |> get(Routes.static_page_path(conn, :about))

    # assert html_response(conn, 200)
    html_response(conn, 200)
    |> assert_select("title", "About | #{@base_title}")
  end

  test "should get contact", %{conn: conn} do
    conn =
      conn
      |> get(Routes.static_page_path(conn, :contact))

    # assert html_response(conn, 200)
    html_response(conn, 200)
    |> assert_select("title", "Contact | #{@base_title}")
  end
end
