class CreateBorrows < ActiveRecord::Migration
  def change
    create_table :borrows do |t|
      t.timestamps null: false
    end
  end
end
