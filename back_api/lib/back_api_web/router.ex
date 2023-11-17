defmodule BackApiWeb.Router do
  use BackApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BackApiWeb do
    pipe_through :api
  end
end
