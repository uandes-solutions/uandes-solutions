class CreateProjectInstitutions < ActiveRecord::Migration[5.2]
  def change
    create_table :project_institutions do |t|
      t.references :institution, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
