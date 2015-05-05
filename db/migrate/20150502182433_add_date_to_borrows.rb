class AddDateToBorrows < ActiveRecord::Migration
  def change
    add_column :borrows, :due, :datetime
  end
end
