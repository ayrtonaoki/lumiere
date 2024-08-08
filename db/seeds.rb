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
  Exercise.create!(name: 'Pegar bola')
  Exercise.create!(name: 'Pequeno x Grande')
  Exercise.create!(name: 'Quebra cabeça de 3 peças')
  Exercise.create!(name: 'Esquerda x Direita')
end

if PatientExercise.count == 0
  PatientExercise.create!(patient_id: 1, exercise_id: 1, success: 10, failed: 10, help: 10)
  PatientExercise.create!(patient_id: 2, exercise_id: 2, success: 10, failed: 10, help: 10)
  PatientExercise.create!(patient_id: 2, exercise_id: 3, success: 10, failed: 10, help: 10)
  PatientExercise.create!(patient_id: 3, exercise_id: 1, success: 10, failed: 10, help: 10)
  PatientExercise.create!(patient_id: 3, exercise_id: 2, success: 10, failed: 10, help: 10)
  PatientExercise.create!(patient_id: 3, exercise_id: 4, success: 10, failed: 10, help: 10)
  PatientExercise.create!(patient_id: 4, exercise_id: 1, success: 10, failed: 10, help: 10)
  PatientExercise.create!(patient_id: 4, exercise_id: 2, success: 10, failed: 10, help: 10)
  PatientExercise.create!(patient_id: 4, exercise_id: 3, success: 10, failed: 10, help: 10)
  PatientExercise.create!(patient_id: 4, exercise_id: 4, success: 10, failed: 10, help: 10)
end
