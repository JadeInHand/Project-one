class AddBranchIdToPoliticians < ActiveRecord::Migration
  def change
  	add_column :politicians, :branch_id, :integer
  end
end
