class AddUserToBlogposts < ActiveRecord::Migration[6.0]
  def change
    add_reference :blogposts, :user, null: false, foreign_key: true
  end
end
