defmodule ChatterWeb.UserCreatesNewChatRoomTest do
  use ChatterWeb.FeatureCase, async: false

  test "user creates a new chat room successfully", %{session: session} do
    user = insert(:user)

    session
    |> visit("/")
    |> sign_in(as: user)
    |> click(new_chat_link())
    |> create_chat_room(name: "elixir")
    |> assert_has(room_title("elixir"))
  end

  defp new_chat_link(), do: Query.link("New chat room")

  defp create_chat_room(session, name: name) do
    session
    |> fill_in(Query.text_field("Name"), with: name)
    |> click(Query.button("Submit"))
  end

  defp room_title(name), do: Query.data("role", "room-title", text: name)
end
