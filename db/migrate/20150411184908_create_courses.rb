class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :dropbox
      t.string :news
      t.string :content
      t.string :quiz
      t.integer :number
      t.integer :section
      t.integer :enrollment
      t.integer :maxenrollment
      t.string :location
      t.string :description
      t.integer :type

      t.timestamps null: false
    end
  end
end
