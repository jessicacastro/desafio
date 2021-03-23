class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.string :slug

      t.timestamps
    end
  end
end
