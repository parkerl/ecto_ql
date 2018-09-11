defmodule EctoQl.Trip do
  use Ecto.Schema
  alias EctoQl.LocationTrip

  schema "trips" do
    timestamps()
    field(:start_date, :date)
    field(:end_date, :date)

    has_many(:locations_trips, LocationTrip)
    has_many(:locations, through: [:locations_trips, :location])
  end
end
