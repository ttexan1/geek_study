5.times do |i|
  User.seed do |s|
    s.id = i+1
    s.name = "user#{i+1}"
    s.email = "user#{i+1}@example.com"
    s.password = "password"
  end
end
