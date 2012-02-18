class AddEmailFieldToTalent < ActiveRecord::Migration
  def change
    add_column :talents, :email, :text
  end
end
