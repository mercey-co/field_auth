class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :age
      t.string :father_name, :mother_name

      t.timestamps
    end
  end
end
