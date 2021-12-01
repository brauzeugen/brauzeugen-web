# Preview all emails at http://localhost:3000/rails/mailers/user
class UserPreview < ActionMailer::Preview
  def release_email
    UserMailer.with(entitlement: Entitlement.first).release_email
  end
end
