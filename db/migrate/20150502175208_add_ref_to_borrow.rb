class AddRefToBorrow < ActiveRecord::Migration
  def change
    add_reference :borrows, :user, index: true
    add_foreign_key :borrows, :users
    add_reference :borrows, :book, index: true
    add_foreign_key :borrows, :books
  end
end
