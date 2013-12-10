class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.string :title
      t.integer :years

      t.timestamps
    end
  end
end
