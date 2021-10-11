defmodule LilReal do
  @moduledoc """
  LilReal keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.

  """
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(LilReal.Endpoint, []),
      supervisor(LilReal.Repo, []),
    ]
    opts = [strategy: :one_for_one, name: LilReal.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
