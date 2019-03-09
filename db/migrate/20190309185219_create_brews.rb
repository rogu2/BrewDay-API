class CreateBrews < ActiveRecord::Migration[5.2]
  def change
    create_table :brews do |t|
      t.string "name", null: false
      t.string "recipe", null: false
      t.string "steps"
      t.string "notes"

      t.timestamps
    end
  end
end
