class ApplicationController < ActionController::Base
  before_action :authorize

    def authorize
      if !User.find_by(id: session[:user_id])
        # redirect_to login_path
      end
    end

  end
