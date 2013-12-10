class AddProfileToWorks < ActiveRecord::Migration
  def change
    add_reference :works, :profile, index: true
  end
end
