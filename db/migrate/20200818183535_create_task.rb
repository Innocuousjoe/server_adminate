class CreateTask < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.integer :points
    end
  end
end
