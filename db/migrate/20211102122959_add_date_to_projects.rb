class AddDateToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :date, :date
  end
end
