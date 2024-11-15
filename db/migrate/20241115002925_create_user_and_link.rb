class CreateUserAndLink < ActiveRecord::Migration[8.0]
  def change
    create_table :users_links do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :link, foreign_key: true
    end
  end
end
