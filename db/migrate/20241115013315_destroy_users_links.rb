class DestroyUsersLinks < ActiveRecord::Migration[8.0]
  def change
    drop_table :users_links
  end
end
