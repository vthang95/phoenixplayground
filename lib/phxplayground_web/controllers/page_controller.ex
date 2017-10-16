defmodule PhxplaygroundWeb.PageController do
  use PhxplaygroundWeb, :controller

  alias Phxplayground.Discussions

  def index(conn, _params) do
  	topics = Discussions.list_topics()
    render conn, "index.html", topics: topics
  end
end
