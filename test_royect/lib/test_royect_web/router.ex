defmodule TestRoyectWeb.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ["html"]
  end

  scope "/", TestRoyectWeb do
    pipe_through :browser

    get "/people", PersonController, :index
  end
end
