class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.references :user, index: true
      t.references :post, index: true
      t.string :link

      t.timestamps
    end
  end
end
