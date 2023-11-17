defmodule BackApi.Repo do
  use Ecto.Repo,
    otp_app: :back_api,
    adapter: Ecto.Adapters.Postgres
end
