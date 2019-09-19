class CreateContactGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_groups do |t|
      t.integer :group_id
      t.integer :contact_id

      t.timestamps
    end
  end
end
