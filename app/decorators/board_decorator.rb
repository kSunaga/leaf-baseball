module BoardDecorator

  def format_start_date
    game_start_date.strftime('%Y年%m月%d日 %H時%m分')
  end

  def format_end_date
    game_end_date.strftime('%Y年%m月%d日 %H時%m分')
  end
end
