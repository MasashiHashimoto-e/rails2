class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_image, :string
    add_column :users, :user_name, :string
    add_column :users, :user_detail, :text
  end
end
