module Admin
  class PagesController < AdminController
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
end

