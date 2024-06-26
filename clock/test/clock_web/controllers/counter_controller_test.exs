defmodule ClockWeb.CounterControllerTest do
  use ClockWeb.ConnCase

  import Clock.DemoFixtures

  @create_attrs %{}
  @update_attrs %{}
  @invalid_attrs %{}

  describe "index" do
    test "lists all counter", %{conn: conn} do
      conn = get(conn, ~p"/counter")
      assert html_response(conn, 200) =~ "Listing Counter"
    end
  end

  describe "new counter" do
    test "renders form", %{conn: conn} do
      conn = get(conn, ~p"/counter/new")
      assert html_response(conn, 200) =~ "New Counter"
    end
  end

  describe "create counter" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/counter", counter: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == ~p"/counter/#{id}"

      conn = get(conn, ~p"/counter/#{id}")
      assert html_response(conn, 200) =~ "Counter #{id}"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, ~p"/counter", counter: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Counter"
    end
  end

  describe "edit counter" do
    setup [:create_counter]

    test "renders form for editing chosen counter", %{conn: conn, counter: counter} do
      conn = get(conn, ~p"/counter/#{counter}/edit")
      assert html_response(conn, 200) =~ "Edit Counter"
    end
  end

  describe "update counter" do
    setup [:create_counter]

    test "redirects when data is valid", %{conn: conn, counter: counter} do
      conn = put(conn, ~p"/counter/#{counter}", counter: @update_attrs)
      assert redirected_to(conn) == ~p"/counter/#{counter}"

      conn = get(conn, ~p"/counter/#{counter}")
      assert html_response(conn, 200)
    end

    test "renders errors when data is invalid", %{conn: conn, counter: counter} do
      conn = put(conn, ~p"/counter/#{counter}", counter: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Counter"
    end
  end

  describe "delete counter" do
    setup [:create_counter]

    test "deletes chosen counter", %{conn: conn, counter: counter} do
      conn = delete(conn, ~p"/counter/#{counter}")
      assert redirected_to(conn) == ~p"/counter"

      assert_error_sent 404, fn ->
        get(conn, ~p"/counter/#{counter}")
      end
    end
  end

  defp create_counter(_) do
    counter = counter_fixture()
    %{counter: counter}
  end
end
