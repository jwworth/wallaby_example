defmodule CreatesUserTest do
  use WallabyExample.IntegrationCase, async: true

  test "fills out form and submits", %{session: session} do
    header = visit(session, user_path(Endpoint, :index))
               |> find("h2") |> text
    assert header == "Listing users"

    click_link(session, "New user")

    header = session |> find("h2") |> text
    assert header == "New user"

    session
      |> fill_in("Name", with: "Joe Hashrocket")
      |> click_button("Submit")

    header = session |> find("h2") |> text
    assert header == "Listing users"

    find(session, "td", text: "Joe Hashrocket")
  end
end
