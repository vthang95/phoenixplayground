defmodule PhxplaygroundWeb.Router do
  use PhxplaygroundWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhxplaygroundWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/topics/new", TopicController, :new
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhxplaygroundWeb do
  #   pipe_through :api
  # end
end
