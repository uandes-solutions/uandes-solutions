class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.string :name
      t.references :regional_pros_office, foreign_key: true
      t.string :description
      t.integer :privacy
      t.references :ruc_felony, foreign_key: true
      t.string :state
      t.references :prosecutor, foreign_key: true
      t.datetime :estimated_end_date
      t.string :log

      t.timestamps
    end
  end
end
