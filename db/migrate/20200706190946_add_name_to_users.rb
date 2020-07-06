class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :cpf, :string
    add_column :users, :phone, :string
    add_column :users, :birth_date, :date
    add_column :users, :address, :string
    add_column :users, :role, :integer
    add_column :users, :status, :integer
  end
end
