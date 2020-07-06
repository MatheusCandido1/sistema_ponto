class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :cpf
      t.string :address
      t.string :phone
      t.date :birth_date
      t.integer :role
      t.integer :status

      t.timestamps
    end
  end
end
