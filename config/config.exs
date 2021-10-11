# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :lil_real, LilRealWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "M0hDP2HmxT0yi3suHtTueZxW2DfYIeZM0Cf995+LQO5wP5Cz5ZWcrmPAT+lIwsOm",
  render_errors: [view: LilRealWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LilReal.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
