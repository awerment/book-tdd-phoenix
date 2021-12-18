ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(Chatter.Repo, :manual)
{:ok, _} = Application.ensure_all_started(:wallaby)
