class AddWorkToDuties < ActiveRecord::Migration
  def change
    add_reference :duties, :work, index: true
  end
end
