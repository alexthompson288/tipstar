class PagesController < ApplicationController
  def home
  end

  def about
  end

  def people	
  	@users = User.all
  end

  def navigation	
  	
  end

  def whatsnew
  end

  def mypage
  end
end
