module Adminpanel
  class AdministrativeController < ApplicationController
    layout 'adminpanel'
    before_action :redirect_if_not_admin

    def redirect_if_not_admin
      redirect_to new_admin_session_path unless admin_signed_in?
    end

    def current_user
      current_admin
    end
  end
end
