class CreatePatientExercises < ActiveRecord::Migration[7.1]
  def change
    create_table :patient_exercises do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true
      t.integer :success, default: 0
      t.integer :failed, default: 0
      t.integer :help, default: 0
      t.integer :attempts, default: 0
      t.string :therapist, null:false

      t.timestamps
    end
  end
end
