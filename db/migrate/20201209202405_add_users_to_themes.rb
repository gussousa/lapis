class AddUsersToThemes < ActiveRecord::Migration[6.0]
  def change
    add_reference :themes, :user, foreign_key: true
  end
end
