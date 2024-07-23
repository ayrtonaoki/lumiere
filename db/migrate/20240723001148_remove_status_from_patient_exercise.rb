class RemoveStatusFromPatientExercise < ActiveRecord::Migration[7.1]
  def change
    remove_column :patient_exercises, :status, :integer
  end
end
