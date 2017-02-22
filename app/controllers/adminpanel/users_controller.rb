module Adminpanel
  class UsersController < AdministrativeController
    def index
      @users = User.all
    end
  end
end