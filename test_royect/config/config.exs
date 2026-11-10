import Config

config :test_royect, ecto_repos: [TestRoyect.Repo]

config :test_royect, TestRoyect.Repo,
  username: System.get_env("TEST_ROYECT_DB_USER", "ecto_student"),
  password: System.get_env("TEST_ROYECT_DB_PASSWORD"),
  hostname: "127.0.0.1",
  port: 5433,
  database: "test_royect_dev"

config :test_royect, TestRoyectWeb.Endpoint,
  adapter: Bandit.PhoenixAdapter,
  http: [ip: {127, 0, 0, 1}, port: 4000],
  render_errors: [formats: [html: TestRoyectWeb.ErrorHTML], layout: false],
  server: true

if File.exists?(Path.join(__DIR__, "local.exs")) do
  import_config "local.exs"
end
