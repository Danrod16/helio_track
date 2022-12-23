class CreateStepTemplates < ActiveRecord::Migration[7.0]
  def change
    create_table :step_templates do |t|
      t.references :step, null: false, foreign_key: true
      t.references :template, null: false, foreign_key: true

      t.timestamps
    end
  end
end
