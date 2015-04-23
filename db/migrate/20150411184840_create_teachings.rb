class CreateTeachings < ActiveRecord::Migration
  def change
    create_table :teachings do |t|
      t.string :term

      t.timestamps null: false
    end
  end
end
