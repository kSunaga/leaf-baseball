class OffersController < ApplicationController

  def new
    @offer = Offer.new
    if params[:template]
      @template = Template.find(params[:template][:id])
    end
  end

  def create
    offer = Offer.new(set_params)
    offer.board_id = params[:board_id]

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
