class CreateManagerIics < ActiveRecord::Migration[5.2]
  def change
    create_table :manager_iics, id: false do |t|
      t.references :iic, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end

    add_index :manager_iics, :iic
    add_index :manager_iics, :user
  end
end
