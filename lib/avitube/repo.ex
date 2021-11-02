defmodule Avitube.Repo do
  use Ecto.Repo,
    otp_app: :avitube,
    adapter: Ecto.Adapters.Postgres
end
