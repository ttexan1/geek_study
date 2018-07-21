12.times do |i|
  Event.seed do |s|
    s.id = i+1
    s.owner_id = 1
    s.condition = "Railsをある程度できる人"
    s.content = "Railsにより圧倒的な世界救済を目指す。今我々は神になる"
    s.description = "世界救済"
    s.start_at = Time.now + i.day
    s.end_at = Time.now + (i+1).day
    s.level = 100
    s.name = "Railsで世界を救う#{i+1}"
    s.place = "東京都目黒区駒場3-8-1"
    s.status = 10
  end
end

12.times do |i|
  Event.seed do |s|
    s.id = i+13
    s.owner_id = 2
    s.condition = "Railsをある程度できる人"
    s.content = "Railsにより圧倒的な世界救済を目指す。今我々は神になる"
    s.description = "世界救済"
    s.start_at = Time.now + i.day
    s.end_at = Time.now + (i+1).day
    s.level = 100
    s.name = "Railsで世界を救う#{i+1}"
    s.place = "東京都目黒区駒場3-8-1"
    s.status = 10
  end
end

12.times do |i|
  Event.seed do |s|
    s.id = i+25
    s.owner_id = 3
    s.condition = "Railsをある程度できる人"
    s.content = "Railsにより圧倒的な世界救済を目指す。今我々は神になる"
    s.description = "世界救済"
    s.start_at = Time.now + i.day
    s.end_at = Time.now + (i+1).day
    s.level = 100
    s.name = "Railsで世界を救う#{i+1}"
    s.place = "東京都目黒区駒場3-8-1"
    s.status = 10
  end
end
