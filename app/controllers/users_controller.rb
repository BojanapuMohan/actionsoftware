class UsersController < ApplicationController
  def profile
  end
  def index
  	@user = User.order("name")
  end

   def subregion_options
        render partial: 'subregion_select'
      end
end
