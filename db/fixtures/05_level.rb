(1..9).each do |i|
  Level.seed do |s|
    s.id = i
    s.number = i
    s.title = "#{i}級"
    s.description = "levelが#{i}級"
  end
end
