defmodule ChanneltestWeb.PageController do
  use ChanneltestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
