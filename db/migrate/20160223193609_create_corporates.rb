class CreateCorporates < ActiveRecord::Migration
  def change
    create_table :corporates do |t|

      t.string :name 
      t.string :address_1
      t.string :address_2
      t.string :city 
      t.string :province 
      t.string :postal_code
      t.string :country 
      t.integer :phone
      t.string :website_url
      t.string :email 
      t.string :password_digest
      t.integer :business_number 
      t.boolean :verified
      t.timestamps
    end
  end
end
