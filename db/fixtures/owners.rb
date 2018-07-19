5.times do |i|
  Owner.seed do |s|
    s.id = i+1
    s.name = "owner#{i+1}"
    s.email = "owner#{i+1}@example.com"
    s.password = "password"
  end
end
