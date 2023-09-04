class CreateLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :levels do |t|
      t.integer :index
      t.string :name

      t.timestamps
    end
  end
end
