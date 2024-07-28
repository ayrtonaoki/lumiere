class CreateSessionExercises < ActiveRecord::Migration[7.1]
  def change
    create_table :session_exercises do |t|
      t.references :patient_exercise, null: false, foreign_key: true
      t.integer :attempts, default: 0
      t.string :therapist_name

      t.timestamps
    end
  end
end
