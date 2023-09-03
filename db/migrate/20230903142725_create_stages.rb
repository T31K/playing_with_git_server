class CreateStages < ActiveRecord::Migration[6.0]
  def change
    create_table :stages do |t|
      t.string :display_message
      t.string :display_prompt
      t.string :image_filename
      t.string :prompt_solution

      t.timestamps
    end
  end
end
