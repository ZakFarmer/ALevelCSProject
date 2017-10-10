class PagesController < ApplicationController
  def index
  end

  def home
  end

  def profile
    # Get the username from the user specified in the URL
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      redirect_to root_path, :notice=> "User '" + params[:id] + "' not found."
    end
  end

  def explore
  end
end
