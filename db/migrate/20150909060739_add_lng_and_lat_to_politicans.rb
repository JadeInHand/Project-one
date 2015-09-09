class AddLngAndLatToPoliticans < ActiveRecord::Migration
  def change
  	add_column :politicians, :longitude, :float
  	add_column :politicians, :latitude, :float
  end
end
