class Addresses < ActiveRecord::Migration[6.0]
  def self.up
    create_table :addresses do |t|
      t.column :street_address, :string 
      t.column :city, :string 
      t.column :state, :string
      t.column :country, :string
      t.column :postal_code, :integer
    end
  end

  def self.down
      drop_table :addresses
  end
end
