class CreateAddAdminToUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :add_admin_to_users do |t|
      t.boolean :admin

      t.timestamps
    end
  end
end
