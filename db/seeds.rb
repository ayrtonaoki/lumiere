# Create User
if User.count == 0
  User.create!(email: 'user@user.com', password: 123456, password_confirmation: 123456)
end

# Create Admin
if Admin.count == 0
  Admin.create!(email: 'admin@admin.com', password: 123456, password_confirmation: 123456)
end

# Create Patients
if Patient.count == 0
  Patient.create!(name: 'José')
  Patient.create!(name: 'Maria')
  Patient.create!(name: 'João')
  Patient.create!(name: 'Ana')
end

# Create Exercises
if Exercise.count == 0
  Exercise.create!(name: 'Pular')
  Exercise.create!(name: 'Jogar bola')
  Exercise.create!(name: 'Pequeno x Grande')
  Exercise.create!(name: 'Quebra cabeça de 3 peças')
end

if PatientExercise.count == 0
  PatientExercise.create!(patient_id: 1, exercise_id: 1, success: 12, failed: 2, help: 6)
  PatientExercise.create!(patient_id: 1, exercise_id: 2, success: 8, failed: 10, help: 2)
  PatientExercise.create!(patient_id: 1, exercise_id: 3, success: 15, failed: 0, help: 5)
  PatientExercise.create!(patient_id: 1, exercise_id: 4, success: 5, failed: 12, help: 3)
  PatientExercise.create!(patient_id: 2, exercise_id: 1, success: 10, failed: 5, help: 5)
  PatientExercise.create!(patient_id: 2, exercise_id: 2, success: 20, failed: 0, help: 0)
  PatientExercise.create!(patient_id: 2, exercise_id: 3, success: 10, failed: 8, help: 2)
  PatientExercise.create!(patient_id: 2, exercise_id: 4, success: 14, failed: 6, help: 0)
  PatientExercise.create!(patient_id: 3, exercise_id: 1, success: 20, failed: 0, help: 0)
  PatientExercise.create!(patient_id: 3, exercise_id: 2, success: 19, failed: 0, help: 1)
  PatientExercise.create!(patient_id: 3, exercise_id: 3, success: 18, failed: 1, help: 1)
  PatientExercise.create!(patient_id: 3, exercise_id: 4, success: 16, failed: 2, help: 2)
  PatientExercise.create!(patient_id: 4, exercise_id: 1, success: 1, failed: 15, help: 4)
  PatientExercise.create!(patient_id: 4, exercise_id: 2, success: 2, failed: 14, help: 4)
  PatientExercise.create!(patient_id: 4, exercise_id: 3, success: 5, failed: 15, help: 0)
  PatientExercise.create!(patient_id: 4, exercise_id: 4, success: 8, failed: 2, help: 10)
end
