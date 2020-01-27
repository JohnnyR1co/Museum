class AddVideoToGalleries < ActiveRecord::Migration[6.0]
  def change
    add_column :galleries, :video, :string
  end
end
