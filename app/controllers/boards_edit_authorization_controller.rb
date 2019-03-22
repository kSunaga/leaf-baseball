class BoardsEditAuthorizationController < ApplicationController
  before_action :set_board, only: %i(create)

  def create
    board = Board.where(id: params[:board_id]).where(password: params[:password])

    if board.present?
      render 'boards/edit'
    else
      flash.now[:error_message] = "パスワードが間違っています。"
      render 'boards/show'
    end
  end

  private

  def set_board
    @board = Board.find(params[:board_id])
  end

  def set_params
    params.permit(:password)
  end
end
