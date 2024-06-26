defmodule Clock.DemoTest do
  use Clock.DataCase

  alias Clock.Demo

  describe "users" do
    alias Clock.Demo.User

    import Clock.DemoFixtures

    @invalid_attrs %{}

    test "list_users/0 returns all users" do
      user = user_fixture()
      assert Demo.list_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Demo.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      valid_attrs = %{}

      assert {:ok, %User{} = user} = Demo.create_user(valid_attrs)
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Demo.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()
      update_attrs = %{}

      assert {:ok, %User{} = user} = Demo.update_user(user, update_attrs)
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = Demo.update_user(user, @invalid_attrs)
      assert user == Demo.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = Demo.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Demo.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = Demo.change_user(user)
    end
  end

  describe "counters" do
    alias Clock.Demo.Counter

    import Clock.DemoFixtures

    @invalid_attrs %{}

    test "list_counters/0 returns all counters" do
      counter = counter_fixture()
      assert Demo.list_counters() == [counter]
    end

    test "get_counter!/1 returns the counter with given id" do
      counter = counter_fixture()
      assert Demo.get_counter!(counter.id) == counter
    end

    test "create_counter/1 with valid data creates a counter" do
      valid_attrs = %{}

      assert {:ok, %Counter{} = counter} = Demo.create_counter(valid_attrs)
    end

    test "create_counter/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Demo.create_counter(@invalid_attrs)
    end

    test "update_counter/2 with valid data updates the counter" do
      counter = counter_fixture()
      update_attrs = %{}

      assert {:ok, %Counter{} = counter} = Demo.update_counter(counter, update_attrs)
    end

    test "update_counter/2 with invalid data returns error changeset" do
      counter = counter_fixture()
      assert {:error, %Ecto.Changeset{}} = Demo.update_counter(counter, @invalid_attrs)
      assert counter == Demo.get_counter!(counter.id)
    end

    test "delete_counter/1 deletes the counter" do
      counter = counter_fixture()
      assert {:ok, %Counter{}} = Demo.delete_counter(counter)
      assert_raise Ecto.NoResultsError, fn -> Demo.get_counter!(counter.id) end
    end

    test "change_counter/1 returns a counter changeset" do
      counter = counter_fixture()
      assert %Ecto.Changeset{} = Demo.change_counter(counter)
    end
  end

  describe "counter" do
    alias Clock.Demo.Counter

    import Clock.DemoFixtures

    @invalid_attrs %{}

    test "list_counter/0 returns all counter" do
      counter = counter_fixture()
      assert Demo.list_counter() == [counter]
    end

    test "get_counter!/1 returns the counter with given id" do
      counter = counter_fixture()
      assert Demo.get_counter!(counter.id) == counter
    end

    test "create_counter/1 with valid data creates a counter" do
      valid_attrs = %{}

      assert {:ok, %Counter{} = counter} = Demo.create_counter(valid_attrs)
    end

    test "create_counter/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Demo.create_counter(@invalid_attrs)
    end

    test "update_counter/2 with valid data updates the counter" do
      counter = counter_fixture()
      update_attrs = %{}

      assert {:ok, %Counter{} = counter} = Demo.update_counter(counter, update_attrs)
    end

    test "update_counter/2 with invalid data returns error changeset" do
      counter = counter_fixture()
      assert {:error, %Ecto.Changeset{}} = Demo.update_counter(counter, @invalid_attrs)
      assert counter == Demo.get_counter!(counter.id)
    end

    test "delete_counter/1 deletes the counter" do
      counter = counter_fixture()
      assert {:ok, %Counter{}} = Demo.delete_counter(counter)
      assert_raise Ecto.NoResultsError, fn -> Demo.get_counter!(counter.id) end
    end

    test "change_counter/1 returns a counter changeset" do
      counter = counter_fixture()
      assert %Ecto.Changeset{} = Demo.change_counter(counter)
    end
  end
end
