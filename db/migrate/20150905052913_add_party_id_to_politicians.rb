class AddPartyIdToPoliticians < ActiveRecord::Migration
  def change
  	add_column :politicians, :party_id, :integer
  end
end
