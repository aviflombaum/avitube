defmodule AvitubeWeb.PageController do
  use AvitubeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
