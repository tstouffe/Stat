class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
