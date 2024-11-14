class CreateLinks < ActiveRecord::Migration[8.0]
  def change
    create_table :links do |t|
      t.string :source, null: false
      t.string :slug, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
