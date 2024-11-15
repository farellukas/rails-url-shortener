class AddIndexToLinksUsers < ActiveRecord::Migration[8.0]
  def change
    add_index :links_users, [ :user_id, :link_id ], unique: true
  end
end
