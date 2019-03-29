defmodule TeddyafsiteWeb.Router do
  use TeddyafsiteWeb, :router

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

  scope "/", TeddyafsiteWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    ##plug Plug.Static, from: "priv/static/html/index.html"
  end

  # Other scopes may use custom stacks.
  # scope "/api", TeddyafsiteWeb do
  #   pipe_through :api
  # end
end
