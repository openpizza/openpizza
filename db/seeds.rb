#normal user
user = User.new email: 'test@example.com', password: 'test', password_confirmation: 'test'
user.confirmation_sent_at = Time.now
user.save! validate: false

#admin user
user = User.new email: 'admin@example.com', password: 'test', password_confirmation: 'test', admin: true
user.confirmation_sent_at = Time.now
user.save! validate: false
