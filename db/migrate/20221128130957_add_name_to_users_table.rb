class AddNameToUsersTable < ActiveRecord::Migration[6.1]
  def change
    change_table(:users) do |t|
      t.column :name, :string 
      t.column :gender, :string
      t.column :phone, :string
      t.column :place_of_work, :string
      t.column :role_in_facility, :string
      t.column :country, :string
      t.column :regulatory_body, :string
    end
  end
end
