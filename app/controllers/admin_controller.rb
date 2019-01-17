class AdminController < ActionController::Base
  http_basic_authenticate_with name: 'admin', password: ENV['ADMIN_PASSWORD'] || ''

  def dashboard
  end

  def users
    @users = User.left_joins(:voices)
                 .group(:id)
                 .order('COUNT(voices.id) DESC')
  end

  def voices
    @voices = Voice.all
  end
end
