class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelper

  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
#  def useronly(task)
#    if task.user.id != current_user.id then
#      redirect_to tasks_url
#    end
#  end
  
end
