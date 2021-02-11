defmodule Evento.Repo do
  use Ecto.Repo,
    otp_app: :evento,
    adapter: Ecto.Adapters.Postgres
end
