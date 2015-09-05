class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|
    	t.text :name
    	t.text :role
    	t.text :previous_works
    	t.text :image
    	t.text :location

      t.timestamps null: false
    end
  end
end
