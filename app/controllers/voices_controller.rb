class VoicesController < ApplicationController
  before_action :set_voice
  before_action :ensure_no_owner, only: %i[new_claim create_claim]

  # GET /voices/:token
  def show
    if @voice.user.present?
      render 'voices/show'
    else
      redirect_to claim_voice_path(@voice)
    end
  end

  # GET /voices/:token/claim
  def new_claim; end

  # PATCH /voices/:token/claim
  def create_claim
    @voice.user = User.find_or_create_by!(email: params[:email])
    @voice.save!

    redirect_to @voice
  end

  private

  def set_voice
    @voice = Voice.find_by!(token: params[:token])
  end

  def ensure_no_owner
    if @voice.user.present?
      flash[:notice] = 'Voice already taken'
      redirect_to @voice
    end
  end
end
