class UpdateLinksUsers < ActiveRecord::Migration[8.0]
  def change
    drop_table :links_users_tables
    create_table :links_users, id: false do |t|
      t.belongs_to :link
      t.belongs_to :user
    end
  end
end
