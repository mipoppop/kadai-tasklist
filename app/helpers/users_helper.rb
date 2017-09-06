module UsersHelper
  def gravatar_url(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  end
  
  def alt
    if @user.id == current_user.id then
      render 'tasks', user: @user
    else
      ''
    end
  end
  
end