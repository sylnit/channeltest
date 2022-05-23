defmodule Channeltest.Repo do
  use Ecto.Repo,
    otp_app: :channeltest,
    adapter: Ecto.Adapters.Postgres
end
