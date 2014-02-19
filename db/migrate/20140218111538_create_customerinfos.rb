class CreateCustomerinfos < ActiveRecord::Migration
  def change
    create_table :customerinfos do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number

      t.timestamps
    end
  end
end
