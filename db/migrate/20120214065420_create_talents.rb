class CreateTalents < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.text :first_name
      t.text :last_name
      t.text :city
      t.text :state
      t.integer :zip_code

      t.timestamps
    end
  end
end
