defmodule Rumbl.Accounts do
  @moduledoc """
  The Accounts context
  """
  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "José", username: "josevalim"},
      %User{id: "2", name: "Ray", username: "Sunny"},
      %User{id: "2", name: "Besh", username: "kesh"},
    ]
  end

  def get_user(id) do
      Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
