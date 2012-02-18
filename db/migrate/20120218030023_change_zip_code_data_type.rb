class ChangeZipCodeDataType < ActiveRecord::Migration
  def change
    change_column :talents, :zip_code, :text
  end
end
