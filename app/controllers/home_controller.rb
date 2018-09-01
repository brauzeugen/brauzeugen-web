class HomeController < ApplicationController
  def index
    @stakes = {
      total_voice_count: 50_000,
      my_voice_count: 42,
      my_permille_share: ((42.0 / 50_000.0) * 1000.0).round(2)
    }
  end
end
