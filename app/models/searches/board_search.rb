class Searches::Board < ApplicationRecord

  def search(params)

    boards = Board

    if params[:name]
      boards = boards.where(name: params[:name])
    end

  end
end
