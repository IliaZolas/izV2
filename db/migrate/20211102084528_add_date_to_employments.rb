class AddDateToEmployments < ActiveRecord::Migration[6.0]
  def change
    add_column :employments, :date, :date
  end
end
