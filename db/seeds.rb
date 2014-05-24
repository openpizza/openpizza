#normal user
#customer address
customer_address = Address.create name: 'Max Mustermann', street: 'Musterstraße 11', postcode: '12345', city: 'Musterhausen'
user = User.new email: 'test@example.com', password: 'test', password_confirmation: 'test'
user.addresses << customer_address
user.confirmation_sent_at = Time.now
user.save! validate: false

#admin user
user = User.new email: 'admin@example.com', password: 'test', password_confirmation: 'test', admin: true
user.confirmation_sent_at = Time.now
user.save! validate: false

#shop
shop_address = Address.create name: 'Best Pizza Around', street: 'Musterweg 11', postcode: '12345', city: 'Musterhausen'
shop_user = User.new email: 'shop@example.com', password: 'test', password_confirmation: 'test'
shop_user.confirmation_sent_at = Time.now
shop_user.save! validate: false
shop = Shop.create user: shop_user, address: shop_address
