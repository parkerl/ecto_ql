defmodule EctoQl.LocationTrip do
  use Ecto.Schema
  alias EctoQl.Location
  alias EctoQl.Trip

  schema "locations_trips" do
    timestamps()
    belongs_to(:location, Location)
    belongs_to(:trip, Trip)
  end
end
