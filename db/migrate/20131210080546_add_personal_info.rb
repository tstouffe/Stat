class AddPersonalInfo < ActiveRecord::Migration
  def change
    add_column :users, :user_phone, :string
    add_column :users, :user_address, :string
  end
end
