class ChangeColumnsFromLinks < ActiveRecord::Migration[7.2]
  def change
    change_column :links, :url, :string, null: false
    change_column :links, :slug, :string, null: false
  end
end
