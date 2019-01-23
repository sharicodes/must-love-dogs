class ApplicationController < ActionController::Base
  before_action :authorize

    # authentication

    # different levels of authorization
      # scopes of auth you have
      # friend relationships
      # paid accounts
      # admin

    # mod 5, you learn more auth... <- gem won't fly, API

    # what is this looking up?
    # who is currently logged in
    # def current_user
    #   User.find(session[:user_id])
    # end

    # plz help me
    # this will allow me to view any pages as long as I am logged in
    def authorize # hide_pages, authorize, is_logged_in
      if !User.find_by(id: session[:user_id])
        redirect_to login_path
      end
    end

    # difference in scope

    # auth gems!!!!
      # devise
      # sorcery
      # clearance
      # omniauth
  end
