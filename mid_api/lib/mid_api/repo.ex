defmodule MidApi.Repo do
  use Ecto.Repo,
    otp_app: :mid_api,
    adapter: Ecto.Adapters.Postgres
end
