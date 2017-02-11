defmodule WallabyExample.IntegrationCase do

  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL

      import Ecto
      import Ecto.Changeset
      import Ecto.Query

      import WallabyExample.Router.Helpers
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(WallabyExample.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(WallabyExample.Repo, {:shared, self()})
    end

    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(WallabyExample.Repo, self())
    {:ok, session} = Wallaby.start_session(metadata: metadata)
    {:ok, session: session}
  end
end
