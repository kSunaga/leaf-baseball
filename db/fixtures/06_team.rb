(1..9).each do |i|
  Team.seed do |s|
    s.id = i
    s.name = "ボンバーズ#{i}"
    s.description = "このチームは#{i}のチームです。"
    s.body = "あと#{i}人選手を募集しています！"
    s.user = User.find((i/3.to_f).ceil)
    s.level = Level.find(i)
  end
end
