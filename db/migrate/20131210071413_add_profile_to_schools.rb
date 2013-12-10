class AddProfileToSchools < ActiveRecord::Migration
  def change
    add_reference :schools, :profile, index: true
  end
end
