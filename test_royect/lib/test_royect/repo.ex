defmodule TestRoyect.Repo do
  use Ecto.Repo,
    otp_app: :test_royect,
    adapter: Ecto.Adapters.Postgres
end
