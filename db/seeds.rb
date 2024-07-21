# Create User
if User.count == 0
  User.create!(email: 'user@user.com', password: 123456, password_confirmation: 123456)
end

# Create Admin
if Admin.count == 0
  Admin.create!(email: 'admin@admin.com', password: 123456, password_confirmation: 123456)
end

# Create
if Patient.count == 0
  Patient.create!(name: 'José')
  Patient.create!(name: 'Maria')
  Patient.create!(name: 'João')
  Patient.create!(name: 'Ana')
end
