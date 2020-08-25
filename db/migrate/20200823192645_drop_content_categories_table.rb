class DropContentCategoriesTable < ActiveRecord::Migration[6.0]
  def change
        drop_table :content_categories
  end
end
