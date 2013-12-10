class AddProfileToProficiencies < ActiveRecord::Migration
  def change
    add_reference :proficiencies, :profile, index: true
  end
end
