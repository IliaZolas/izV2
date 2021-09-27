class AddDateToBlogposts < ActiveRecord::Migration[6.0]
  def change
    add_column :blogposts, :date, :date
  end
end
