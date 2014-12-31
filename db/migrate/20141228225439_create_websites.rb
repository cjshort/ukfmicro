class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :subdomain
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :region
      t.string :postcode
      t.string :telephone
      t.string :email
      t.integer :branch_id

      t.timestamps
    end
  end
end
