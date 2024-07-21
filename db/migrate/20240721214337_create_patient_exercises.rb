class CreatePatientExercises < ActiveRecord::Migration[7.1]
  def change
    create_table :patient_exercises do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
