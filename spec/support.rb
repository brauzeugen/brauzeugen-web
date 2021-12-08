Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :active_record
    with.library :active_model
  end
end

def http_basic_auth_env
  user = "admin"
  password = ""
  {
    HTTP_AUTHORIZATION: ActionController::HttpAuthentication::Basic.encode_credentials(user, password)
  }
end

module IsAnticipated
  def is_anticipated
    expect { subject }
  end
end
