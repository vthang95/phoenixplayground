defmodule Phxplayground.Repo.Migrations.DeleteTableTopic do
  use Ecto.Migration

  def change do
  	drop table(:topic)
  end
end
