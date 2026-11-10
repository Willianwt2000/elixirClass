defmodule TestRoyect.People do
  alias Friends.Person
  alias TestRoyect.Repo

  def list_names do
    Repo.all(Person)
    |> Enum.map(fn person -> person.name end)
  end

  def list_email do
    Repo.all(Person)
    |> Enum.map(fn person -> person.email end)
  end
end
