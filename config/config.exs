# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :nfloracle, Nfloracle.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "nfloracle_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"


# General application configuration
config :nfloracle,
  ecto_repos: [Nfloracle.Repo]

# Configures the endpoint
config :nfloracle, NfloracleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "s1jUs5+Uxc6vVquL1Up5ueeZvbkl2uyv44KexUO4y9yvhx/e+tLTxZkvtIpPbX+D",
  render_errors: [view: NfloracleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Nfloracle.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
