class AddImageUrlToContent < ActiveRecord::Migration[6.0]
  def change
    add_column :contents, :image_url, :string
  end
end
