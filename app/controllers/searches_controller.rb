class SearchesController < ApplicationController
  before_action :authenticate_user!

  #if文を使い検索モデルUser or Bookで条件分岐
  def search
    @range = params[:range]
    @word =  params[:word]

    if @range == "User"
      @users = User.looks(params[:search],params[:word])
    else
      @books = Book.looks(params[:search],params[:word])
    end
  end
end
