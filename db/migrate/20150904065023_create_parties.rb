class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
    	t.text :name
    	t.text :ideology
    	t.integer :seats
    	t.integer :members
    	t.text :history
    	t.text :emblem

      t.timestamps null: false
    end
  end
end
