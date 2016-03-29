class CreateAssociates < ActiveRecord::Migration
  def change
    create_table :associates do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :email

      t.timestamps null: false
    end
  end
end
