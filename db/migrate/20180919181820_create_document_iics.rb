class CreateDocumentIics < ActiveRecord::Migration[5.2]
  def change
    create_table :document_iics do |t|
      t.references :iic, foreign_key: true
      t.references :document, foreign_key: true

      t.timestamps
    end
  end
end
