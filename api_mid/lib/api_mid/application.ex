defmodule ApiMid.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      ApiMidWeb.Telemetry,
      ApiMid.Repo,
      {DNSCluster, query: Application.get_env(:api_mid, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: ApiMid.PubSub},
      # Start a worker by calling: ApiMid.Worker.start_link(arg)
      # {ApiMid.Worker, arg},
      # Start to serve requests, typically the last entry
      ApiMidWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ApiMid.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ApiMidWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
