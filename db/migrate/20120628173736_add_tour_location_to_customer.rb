class AddTourLocationToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :tour_location, :string

  end
end
