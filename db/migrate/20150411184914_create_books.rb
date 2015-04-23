class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.string :details
      t.string :location

      t.timestamps null: false
    end
  end
end
