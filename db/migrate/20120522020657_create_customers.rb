class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.date :tour_date
      t.string :email

      t.timestamps
    end
  end
end