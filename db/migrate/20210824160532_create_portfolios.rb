class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.string :client_name
      t.string :client_url
      t.text :client_description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
