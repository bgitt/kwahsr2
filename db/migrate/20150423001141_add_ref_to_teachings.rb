class AddRefToTeachings < ActiveRecord::Migration
  def change
    add_reference :teachings, :user, index: true
    add_foreign_key :teachings, :users
    add_reference :teachings, :course, index: true
    add_foreign_key :teachings, :courses
  end
end
