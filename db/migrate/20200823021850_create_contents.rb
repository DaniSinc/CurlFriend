class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :description
      t.string :content_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
