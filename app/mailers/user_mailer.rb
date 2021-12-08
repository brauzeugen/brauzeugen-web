class UserMailer < ApplicationMailer
  def release_email
    @entitlement = params[:entitlement]
    @user = @entitlement.user
    @release = @entitlement.release

    mail(to: @user.email, subject: @release.email_subject) do |format|
      format.text { render plain: interpolated(@release.email_template) }
    end

  rescue StandardError => exception
    Raven.capture_exception(exception) if defined? Raven
    Rails.logger.warn(exception)
  end

  private

  def interpolated(string)
    string.gsub(/%[^{]/, '%%') % {
      user_email: @user.email,
      user_voices_count: @user.voices.count,
      release_distributable_total: @release.distributable_total,
      entitlement_value: @entitlement.value
    }
  end
end
