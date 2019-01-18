if Rails.env.production?
  Raven.configure do |config|
    config.environments = %w[production]
    config.dsn = ENV['SENTRY_DSN']
  end
end

