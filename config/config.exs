# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :evento,
  ecto_repos: [Evento.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :evento, EventoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5hsiV39dbp2DPbF/yAGRATD4sK/W7R0HKdnX5G/dk0lRTclJkD2T4pVyifjacdya",
  render_errors: [view: EventoWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Evento.PubSub,
  live_view: [signing_salt: "4c+uQ/dA"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
