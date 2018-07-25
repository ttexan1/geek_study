10.times do |i|
  Ticket.seed do |s|
    s.id = i+1
    s.user_id = 1
    s.event_id = 1+i
    s.comments = "楽しみにしてます！！！#{i}"
  end
end
8.times do |i|
  Ticket.seed do |s|
    s.id = i+11
    s.user_id = 2
    s.event_id = 1+i
    s.comments = "楽しみにしてます！！！#{i}"
  end
end
4.times do |i|
  Ticket.seed do |s|
    s.id = i+21
    s.user_id = 3
    s.event_id = 1+i
    s.comments = "楽しみにしてます！！！#{i}"
  end
end
2.times do |i|
  Ticket.seed do |s|
    s.id = i+11
    s.user_id = 4
    s.event_id = 1+i
    s.comments = "楽しみにしてます！！！#{i}"
  end
end
