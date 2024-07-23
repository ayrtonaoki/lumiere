class AddSucessFailHelpToPatientExercise < ActiveRecord::Migration[7.1]
  def change
    add_column :patient_exercises, :success, :integer
    add_column :patient_exercises, :fail, :integer
    add_column :patient_exercises, :help, :integer
  end
end
