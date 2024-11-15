class CreateLinks < ActiveRecord::Migration[8.0]
  def change
    create_table :links do |t|
      t.string :source, null: false
      t.string :short_url, null: false

      t.timestamps
    end
  end
end
