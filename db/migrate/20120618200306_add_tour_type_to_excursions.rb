class AddTourTypeToExcursions < ActiveRecord::Migration
  def change
    add_column :excursions, :tour_type, :string

  end
end
