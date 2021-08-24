class CreateEmployments < ActiveRecord::Migration[6.0]
  def change
    create_table :employments do |t|
      t.string :position_title
      t.string :company_name
      t.string :company_url
      t.text :company_description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
