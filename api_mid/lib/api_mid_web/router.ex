defmodule ApiMidWeb.Router do
  use ApiMidWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ApiMidWeb do
    pipe_through :api
  end
end
