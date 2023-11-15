defmodule ApiMid.Repo do
  use Ecto.Repo,
    otp_app: :api_mid,
    adapter: Ecto.Adapters.Postgres
end
