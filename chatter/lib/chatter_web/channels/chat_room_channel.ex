defmodule ChatterWeb.ChatRoomChannel do
  use ChatterWeb, :channel

  alias Chatter.Chat

  def join("chat_room:" <> _room_name, _msg, socket) do
    {:ok, socket}
  end

  def handle_in("new_message", payload, socket) do
    %{room: room, email: author} = socket.assigns

    outgoing_payload = Map.put(payload, "author", author)

    Chat.new_message(room, outgoing_payload)
    broadcast(socket, "new_message", outgoing_payload)

    {:noreply, socket}
  end
end
