class CreatePdfs < ActiveRecord::Migration[6.0]
  def change
    create_table :pdfs do |t|
      t.string :title
      t.string :pdf_file
      t.string :icon
      t.references :gallery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
