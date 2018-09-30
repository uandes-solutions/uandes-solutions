class CreateCcDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :cc_documents do |t|
      t.references :document, foreign_key: true
      t.references :case_coordination, foreign_key: true

      t.timestamps
    end
  end
end
