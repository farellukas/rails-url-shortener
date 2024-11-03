class CreateLinks < ActiveRecord::Migration[7.2]
  def change
    drop_table :links
    create_table :links do |t|
      t.string :url, null: false
      t.string :slug, null: false

      t.timestamps
    end
  end
end
