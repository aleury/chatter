defmodule ChatterWeb.FeatureCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL
      import Chatter.Factory
      alias ChatterWeb.Router.Helpers, as: Routes

      @endpoint ChatterWeb.Endpoint
    end
  end

  setup tags do
    Chatter.DataCase.setup_sandbox(tags)

    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(Chatter.Repo, self())
    {:ok, session} = Wallaby.start_session(metadata: metadata)
    {:ok, session: session, metadata: metadata}
  end
end
