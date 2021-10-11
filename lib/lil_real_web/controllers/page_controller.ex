defmodule LilRealWeb.PageController do
  use LilRealWeb, :controller
  require Logger

  def index(conn, _params) do
    render(conn, "index.html")
  end

  @impl true
  def handle_event("new-room", _params, socket) do
    Logger.info("clicked!")
    {:noreply, socket}
  end

end
