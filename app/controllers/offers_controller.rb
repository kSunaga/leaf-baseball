class OffersController < ApplicationController

  def create
    offer = Offer.new(set_params)
    offer.board_id = params[:format]

    if offer.save!
      flash[:message] = "申し込みに成功しました。"
    else
      flash[:message] = "申し込みに失敗しました。"
    end

    redirect_to boards_path
  end

  private

  def set_params
    params.permit(:name, :email, :content)
  end
end
