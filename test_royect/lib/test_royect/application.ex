defmodule TestRoyect.Application do
  use Application

  def start(_type, _args) do
    children = [
      TestRoyect.Repo,
      TestRoyectWeb.Endpoint
    ]
    Supervisor.start_link(children, strategy: :one_for_one, name: TestRoyect.Supervisor)
  end
end
