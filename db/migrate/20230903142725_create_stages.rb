class CreateStages < ActiveRecord::Migration[6.0]
  def change
    create_table :stages do |t|
      t.string :display_message
      t.string :display_prompt
      t.string :image_filename
      t.string :prompt_solution
      t.integer :level_id 
      t.integer :step
      t.timestamps
    end

    add_foreign_key :stages, :levels
  end
end
