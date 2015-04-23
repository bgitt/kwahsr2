class FixTypeColumn < ActiveRecord::Migration
  def change
    rename_column :courses, :type, :coursetype
  end
end
