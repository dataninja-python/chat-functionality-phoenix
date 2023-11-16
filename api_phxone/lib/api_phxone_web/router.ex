defmodule ApiPhxoneWeb.Router do
  use ApiPhxoneWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ApiPhxoneWeb do
    pipe_through :api
  end
end
