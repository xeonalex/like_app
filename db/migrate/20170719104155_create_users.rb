class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :login, index: { unique: true }
      t.string :password
      t.string :name

      t.timestamps
    end
  end
end
