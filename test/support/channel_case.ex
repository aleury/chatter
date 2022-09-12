defmodule ChatterWeb.ChannelCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      # Import conveniences for testing with channels
      import Phoenix.ChannelTest

      # The default endpoint for testing
      @endpoint ChatterWeb.Endpoint
    end
  end

  setup tags do
    Chatter.DataCase.setup_sandbox(tags)
    :ok
  end
end
