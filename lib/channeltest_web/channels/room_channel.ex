defmodule ChanneltestWeb.RoomChannel do
  use ChanneltestWeb, :channel

  @impl true
  def join("room:lobby", _message, socket) do
    {:ok, socket}
  end

  @impl true
  def join("room:" <> _private_room_id, _params, _socket) do
    {:error, %{reason: "unauthorized"}}
  end

  # Channels can be used in a request/response fashion
  # by sending replies to requests from the client
  @impl true
  def handle_in("new_msg", %{"body" => body}, socket) do
    IO.inspect(body)
    broadcast!(socket, "new_msg", %{body: body})
    {:noreply, socket}
  end

end
