module UsersHelper
  def gravatar_url(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  end
  
  def alt
    if @user.id != current_user.id then
      '<div class="alert alert-warning" >確認のため、あえて他ユーザのタスクリストを表示しています。</div>'
    else
      ''
    end
  end
  
end