defmodule ChatterWeb.UserSocket do
  use Phoenix.Socket

  ## Channels
  channel "chat_room:*", ChatterWeb.ChatRoomChannel

  def connect(_params, socket, _connect_info) do
    {:ok, socket}
  end

  def id(_socket), do: nil
end
