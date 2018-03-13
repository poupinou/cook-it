class StaticPagesController < ApplicationController
  def home
  end

  def admin
  end

  def about
  end

  def liste
    @user = current_user
    @list_user = List.where(user_id: @user.id)
  end

  def frigo
  end
end
