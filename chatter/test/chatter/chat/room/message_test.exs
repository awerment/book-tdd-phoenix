defmodule Chatter.Chat.Room.MessageTest do
  use Chatter.DataCase, async: true

  alias Chatter.Chat.Room.Message

  describe "changeset/2" do
    test "validates that an author and body are provided" do
      changes = %{}
      changeset = Message.changeset(%Message{}, changes)

      refute changeset.valid?
      assert "can't be blank" in errors_on(changeset).body
      assert "can't be blank" in errors_on(changeset).author
    end
  end
end
