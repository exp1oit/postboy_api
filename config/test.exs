use Mix.Config

# Configuration for test environment
config :ex_unit, capture_log: true


# Configure your database
config :postboy_api, Postboy.Repo,
  pool: Ecto.Adapters.SQL.Sandbox,
  database: {:system, "DB_NAME", "postboy_api_test"}

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :postboy_api, Postboy.Web.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

# Run acceptance test in concurrent mode
config :postboy_api, sql_sandbox: true
