defmodule Evento.Repo.Migrations.CreateEventos do
  use Ecto.Migration

  def change do
    create table(:eventos, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :nome_do_evento, :string
      add :data, :date
      add :hora, :time
      add :data_de_criacao, :date
      add :local, :text
      add :organizador, :string
      add :sobre, :text
      add :obs, :text
      add :ativo, :boolean, default: true, null: false

      timestamps()
    end

  end
end
