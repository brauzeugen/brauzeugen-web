class UserMailer < ApplicationMailer
  def release_email
    @entitlement = params[:entitlement]
    @user = @entitlement.user
    @release = @entitlement.release

    mail(to: @user.email, subject: @release.email_subject) do |format|
      format.text { render plain: interpolated(@release.email_template) }
    end
  end

  private

  def interpolated(string)
    string % {
      user_email: @user.email,
      user_voices_count: @user.voices.count,
      release_distributable_total: @release.distributable_total,
      entitlement_value: @entitlement.value
    }
  end
end
