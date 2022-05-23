import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :channeltest, Channeltest.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "channeltest_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :channeltest, ChanneltestWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "ecEszihuCv3JtfotKVIcv9GAckfbY9aBSelysH7+VdLpOSPB/ytn3hzQZ/DFZPHe",
  server: false

# In test we don't send emails.
config :channeltest, Channeltest.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
