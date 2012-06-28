class CreateAssignments < ActiveRecord::Migration
  def up
  	create_table :assignments do |t|
  		t.integer :excursion_id
  		t.integer :location_id
  	end
  add_index :assignments, :excursion_id
  add_index :assignments, :location_id
 end

  def down
  	remove_index :assignments, :excursion_id
  	remove_index :assignments, :location_id
  	drop_table :assignments
  end
end
