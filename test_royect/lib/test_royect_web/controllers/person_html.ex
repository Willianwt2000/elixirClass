defmodule TestRoyectWeb.PersonHTML do
  use Phoenix.Component

  def index(assigns) do
    ~H"""
    <h1>Personas registradas</h1>

    <ul>
      <li :for={name <- @names}>{name}</li>
    </ul>
    """
  end
end
