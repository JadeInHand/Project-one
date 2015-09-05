class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
    	t.text :name
    	t.text :functions
    	t.text :powers
    	t.text :history

      t.timestamps null: false
    end
  end
end
