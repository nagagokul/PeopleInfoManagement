class Users < ActiveRecord::Migration[6.0]
  def self.up
    create_table :users do |t|
      t.column :first_name, :string 
      t.column :last_name, :string 
      t.column :age, :integer 
      t.column :gender, :string 
      t.column :date_of_birth, :datetime
      t.column :martial_status, :string
    end
  end

  def self.down
    drop_table :users
  end
end
