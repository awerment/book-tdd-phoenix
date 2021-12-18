defmodule Chatter.Chat.RoomTest do
  use Chatter.DataCase, async: true

  alias Chatter.Chat.Room

  describe "changeset/2" do
    test "validates that a name is provided" do
      changeset = Room.changeset(%Room{}, %{})

      assert "can't be blank" in errors_on(changeset).name
    end
  end
end
