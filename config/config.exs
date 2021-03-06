# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :usual_weather, UsualWeather.Endpoint,
  root: Path.expand("..", __DIR__),
  http: [port: System.get_env("PORT")],
  url: [host: System.get_env("CANONICAL_HOST")],
  secret_key_base: System.get_env("SECRET_KEY_BASE"),
  debug_errors: false

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
