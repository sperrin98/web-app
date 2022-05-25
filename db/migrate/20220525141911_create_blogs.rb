class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :overview
      t.string :chart
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
