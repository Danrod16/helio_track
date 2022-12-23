class CreateProjectJourneys < ActiveRecord::Migration[7.0]
  def change
    create_table :project_journeys do |t|
      t.references :project, null: false, foreign_key: true
      t.references :journey, null: false, foreign_key: true

      t.timestamps
    end
  end
end
