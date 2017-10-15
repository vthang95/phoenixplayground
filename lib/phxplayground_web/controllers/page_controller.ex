defmodule PhxplaygroundWeb.PageController do
  use PhxplaygroundWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
