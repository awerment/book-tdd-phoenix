defmodule ChatterWeb.UserVisitsHomepageTest do
  use ChatterWeb.FeatureCase

  test "user can visit homepage", %{session: session} do
    user = insert(:user)

    session
    |> visit("/")
    |> sign_in(as: user)
    |> assert_has(Query.css(".title", text: "Welcome to Chatter!"))
  end
end
