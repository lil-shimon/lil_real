defmodule LilRealWeb.PageController do
  use LilRealWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
