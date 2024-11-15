class CreateLinksUsersTable < ActiveRecord::Migration[8.0]
  def change
    create_table :links_users_tables, id: false do |t|
      t.belongs_to :links
      t.belongs_to :users
    end
  end
end
