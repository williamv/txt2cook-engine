class CreatePhonenumbers < ActiveRecord::Migration
  def change
    create_table :phonenumbers do |t|
      t.string :phone_number

      t.timestamps
    end
  end
end
