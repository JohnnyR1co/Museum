class CreateGalleries < ActiveRecord::Migration[6.0]
  def change
    create_table :galleries do |t|
      t.string :title
      t.string :icon
      t.json :images
      t.references :division, null: false, foreign_key: true

      t.timestamps
    end
  end
end
