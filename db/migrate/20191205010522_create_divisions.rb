class CreateDivisions < ActiveRecord::Migration[6.0]
  def change
    create_table :divisions do |t|
      t.string :title
      t.string :icon

      t.timestamps
    end
  end
end
