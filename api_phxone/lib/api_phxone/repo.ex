defmodule ApiPhxone.Repo do
  use Ecto.Repo,
    otp_app: :api_phxone,
    adapter: Ecto.Adapters.Postgres
end
