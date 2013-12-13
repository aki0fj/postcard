class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :zip_cd
      t.string :address
      t.string :name

      t.timestamps
    end
  end
end
