defmodule TestRoyectWeb.PersonController do
  use Phoenix.Controller, formats: [:html]

  alias TestRoyect.People

  def index(conn, _params) do
    names = People.list_names()
    render(conn, :index, names: names)
  end
end
