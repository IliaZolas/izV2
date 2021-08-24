class CreateBlogposts < ActiveRecord::Migration[6.0]
  def change
    create_table :blogposts do |t|
      t.string :blog_title
      t.string :blog_sub_heading
      t.text :blog_text

      t.timestamps
    end
  end
end
