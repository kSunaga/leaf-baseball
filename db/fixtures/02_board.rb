Board.seed do |s|
  s.id = 1
  s.name = 'ボブ'
  s.place = "位置野球場"
  s.game_start_date = '2019-01-21'
  s.game_end_date = '2019-01-23'
  s.level = 2
  s.content = "相手募集"
  s.password = 1234
  s.user = User.find(1)
end

Board.seed do |s|
  s.id = 2
  s.name = 'アリス'
  s.place = "荷野球場"
  s.game_start_date = '2019-01-23'
  s.game_end_date = '2019-01-23'
  s.level = 3
  s.content = "相手募集"
  s.password = 1234
  s.user = User.find(1)
end

Board.seed do |s|
  s.id = 3
  s.name = '後藤'
  s.place = "三野球場"
  s.game_start_date = '2019-01-22'
  s.game_end_date = '2019-01-23'
  s.level = 5
  s.content = "相手募集"
  s.password = 1234
  s.user = User.find(2)
end

Board.seed do |s|
  s.id = 4
  s.name = '三平'
  s.place = "四野球場"
  s.game_start_date = '2016-01-21'
  s.game_end_date = '2019-01-23'
  s.level = 6
  s.content = "相手募集"
  s.password = 1234
  s.user = User.find(2)
end

Board.seed do |s|
  s.id = 5
  s.name = 'ジョン'
  s.place = "五野球場"
  s.game_start_date = '2012-01-21'
  s.game_end_date = '2019-01-23'
  s.level = 9
  s.content = "相手募集"
  s.password = 1234
  s.user = User.find(3)
end

Board.seed do |s|
  s.id = 6
  s.name = 'joy'
  s.place = "録野球場"
  s.game_start_date = '2021-01-21'
  s.game_end_date = '2019-01-23'
  s.level = 11
  s.content = "相手募集"
  s.password = 1234
  s.user = User.find(3)
end

