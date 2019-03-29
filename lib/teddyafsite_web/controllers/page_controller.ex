defmodule TeddyafsiteWeb.PageController do
  use TeddyafsiteWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
