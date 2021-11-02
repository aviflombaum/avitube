import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :avitube, Avitube.Repo,
  username: "postgres",
  password: "postgres",
  database: "avitube_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :avitube, AvitubeWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "5uaZdj84zb5RlAlICfWsLE3MV2QDXgu32FQFLvJeV4hbUGRZzxJhcMq6on/YcPdS",
  server: false

# In test we don't send emails.
config :avitube, Avitube.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
