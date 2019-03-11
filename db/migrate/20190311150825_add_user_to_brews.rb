class AddUserToBrews < ActiveRecord::Migration[5.2]
  def change
    add_reference :brews, :user, foreign_key: true
  end
end
