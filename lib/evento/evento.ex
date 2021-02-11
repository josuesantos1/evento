defmodule Evento.Evento do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "eventos" do
    field :ativo, :boolean, default: false
    field :data, :date
    field :data_de_criacao, :date
    field :hora, :time
    field :local, :string
    field :nome_do_evento, :string
    field :obs, :string
    field :organizador, :string
    field :sobre, :string

    timestamps()
  end

  @doc false
  def changeset(evento, attrs) do
    evento
    |> cast(attrs, [:nome_do_evento, :data, :hora, :data_de_criacao, :local, :organizador, :sobre, :obs, :ativo])
    |> validate_required([:nome_do_evento, :data, :hora, :data_de_criacao, :local, :organizador, :sobre, :obs, ])
  end
end
