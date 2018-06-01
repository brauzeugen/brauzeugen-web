Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :google_oauth2, Credentials.dig(:google, :client_id), Credentials.dig(:google, :client_secret)
end