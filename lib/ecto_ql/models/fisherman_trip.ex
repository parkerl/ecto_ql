defmodule EctoQl.FishermanTrip do
  alias EctoQl.Fisherman
  alias EctoQl.Trip

  use Ecto.Schema

  schema "fishermen_trips" do
    timestamps()
    belongs_to(:fisherman, Fisherman)
    belongs_to(:trip, Trip)
  end
end
