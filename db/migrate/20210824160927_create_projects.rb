class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :project_url
      t.text :project_description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
