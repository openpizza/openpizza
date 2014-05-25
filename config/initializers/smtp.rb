if Rails.env.production?
  host = 'www.open-pizza.de'
  email = "noreply@#{host}"
  RailsBootstrap::Application.config.action_mailer.default_url_options = { :host => host }
  RailsBootstrap::Application.config.mailer_sender = email
  ActionMailer::Base.default_options = { from: email }
  ActionMailer::Base.smtp_settings = {
    port: ENV['SMTP_PORT'],
    address: ENV['SMTP_HOST'],
    user_name: ENV['SMTP_USER'],
    password: ENV['SMTP_PASS'],
    domain: host,
    authentication: :plain
  }
  ActionMailer::Base.delivery_method = :smtp
end
