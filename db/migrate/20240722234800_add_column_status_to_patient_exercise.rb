class AddColumnStatusToPatientExercise < ActiveRecord::Migration[7.1]
  def change
    add_column :patient_exercises, :status, :integer
  end
end
