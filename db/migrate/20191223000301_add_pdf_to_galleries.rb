class AddPdfToGalleries < ActiveRecord::Migration[6.0]
  def change
    add_column :galleries, :pdf, :string
  end
end
