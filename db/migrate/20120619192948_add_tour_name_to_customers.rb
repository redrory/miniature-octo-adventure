class AddTourNameToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :tour_name, :string

  end
end
