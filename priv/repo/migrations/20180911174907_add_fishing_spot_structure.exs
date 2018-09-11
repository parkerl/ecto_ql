defmodule EctoQl.Repo.Migrations.AddFishingSpotStructure do
  use Ecto.Migration

  def change do
    create table(:fly_types) do
      add(:name, :string)

      timestamps()
    end

    create table(:fish_species) do
      add(:name, :string)

      timestamps()
    end

    create table(:trips) do
      add(:start_date, :date)
      add(:end_date, :date)

      timestamps()
    end

    create table(:location_types) do
      add(:name, :string)

      timestamps()
    end

    create table(:fishermen) do
      add(:name, :string)
      add(:first_name, :string)
      add(:last_name, :string)
      add(:date_of_birth, :date)

      timestamps()
    end

    create table(:locations) do
      add(:name, :string)
      add(:altitude, :integer)
      add(:lat, :decimal)
      add(:long, :decimal)
      add(:location_type_id, references(:location_types))

      timestamps()
    end

    create table(:fish_landed) do
      add(:date_and_time, :naive_datetime)
      add(:weight, :decimal)
      add(:length, :decimal)
      add(:notes, :text)
      add(:fisherman_id, references(:fishermen))
      add(:location_id, references(:locations))
      add(:fly_type_id, references(:fly_types))
      add(:fish_species_id, references(:fish_species))

      timestamps()
    end

    create(index(:fish_landed, [:fisherman_id]))

    create table(:locations_trips) do
      add(:location_id, references(:locations))
      add(:trip_id, references(:trips))

      timestamps()
    end

    create table(:fishermen_trips) do
      add(:fisherman_id, references(:fishermen))
      add(:trip_id, references(:trips))

      timestamps()
    end

    execute("CREATE SCHEMA users")

    create table(:accounts, prefix: :users) do
      add(:identifier, :string)
      add(:name, :string)

      timestamps()
    end
  end
end
