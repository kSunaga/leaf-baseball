class BoardsController < ApplicationController
  before_action :set_params, only: %i(show edit update destroy)

  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    if Board.is_password_valid(params[:password], params[:cofirm_password])
      board = Board.new(boards_params)
    end

    if board.save!
      flash[:message] = "成功しました。"
    else
      flash[:message] = "失敗しました。"
    end
    redirect_to boards_path
  end

  def show
  end

  def edit
  end

  def update
    if @board.update(boards_params)
      redirect_to boards_path
    else
      render :edit
    end
  end

  def destroy
     @board.destroy
     redirect_to boards_path
  end

  private

  def set_params
    @board = Board.find(params[:id])
  end

  def boards_params
    params.require(:board).permit(:name, :place, :level, :game_date, :content)
  end
end
