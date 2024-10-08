if User.count == 0
  User.create!(email: ENV['USER_EMAIL'], password: ENV['USER_PASSWORD'], password_confirmation: ENV['USER_PASSWORD'])
end

if Admin.count == 0
  Admin.create!(email: ENV['ADMIN_EMAIL'], password: ENV['ADMIN_PASSWORD'], password_confirmation: ENV['ADMIN_PASSWORD'])
end

if Patient.count == 0
  Patient.create!(name: 'José')
  Patient.create!(name: 'Maria')
  Patient.create!(name: 'João')
  Patient.create!(name: 'Ana')
end

if Exercise.count == 0
  Exercise.create!(name: 'Pular')
  Exercise.create!(name: 'Jogar bola')
  Exercise.create!(name: 'Pegar bola')
  Exercise.create!(name: 'Pequeno x Grande')
  Exercise.create!(name: 'Quebra cabeça de 3 peças')
  Exercise.create!(name: 'Esquerda x Direita')
end

if Therapist.count == 0
  Therapist.create!(name: 'Jeovana')
  Therapist.create!(name: 'Rose')
  Therapist.create!(name: 'Andressa')
end

if PatientExercise.count == 0
  PatientExercise.create!(patient_id: 1, exercise_id: 1, therapist_id: 1, success: 10, failed: 10, help: 10)
  PatientExercise.create!(patient_id: 2, exercise_id: 2, therapist_id: 2, success: 10, failed: 10, help: 10)
  PatientExercise.create!(patient_id: 2, exercise_id: 3, therapist_id: 1, success: 10, failed: 10, help: 10)
  PatientExercise.create!(patient_id: 3, exercise_id: 1, therapist_id: 2, success: 10, failed: 10, help: 10)
  PatientExercise.create!(patient_id: 3, exercise_id: 2, therapist_id: 1, success: 10, failed: 10, help: 10)
  PatientExercise.create!(patient_id: 3, exercise_id: 4, therapist_id: 2, success: 10, failed: 10, help: 10)
  PatientExercise.create!(patient_id: 4, exercise_id: 1, therapist_id: 3, success: 10, failed: 10, help: 10)
  PatientExercise.create!(patient_id: 4, exercise_id: 2, therapist_id: 1, success: 10, failed: 10, help: 10)
  PatientExercise.create!(patient_id: 4, exercise_id: 3, therapist_id: 3, success: 10, failed: 10, help: 10)
  PatientExercise.create!(patient_id: 4, exercise_id: 4, therapist_id: 1, success: 10, failed: 10, help: 10)
end
