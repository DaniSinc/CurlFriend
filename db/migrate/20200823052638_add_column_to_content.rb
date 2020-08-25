class AddColumnToContent < ActiveRecord::Migration[6.0]
  def change
    add_column :contents, :video_url, :string
  end
end
