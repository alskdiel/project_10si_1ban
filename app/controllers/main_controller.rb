class MainController < ApplicationController
  def index
    if user_signed_in?
      redirect_to url_for(:controller => :item,
                          :action => :show)
    end
  end
end
