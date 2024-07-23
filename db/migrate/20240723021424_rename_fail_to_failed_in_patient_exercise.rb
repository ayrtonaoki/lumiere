class RenameFailToFailedInPatientExercise < ActiveRecord::Migration[7.1]
  def change
    rename_column :patient_exercises, :fail, :failed
  end
end
