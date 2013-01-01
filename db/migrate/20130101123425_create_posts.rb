class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.text :embed_code
      t.integer :footer_id

      t.timestamps
    end
  end
end
