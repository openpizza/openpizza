require 'securerandom'

#normal user
#customer address
customer_address = Address.create name: 'Max Mustermann', street: 'Musterstraße 11', postcode: '12345', city: 'Musterhausen'
customer_user = User.new email: 'test@example.com', password: 'test', password_confirmation: 'test'
customer_user.addresses << customer_address
customer_user.confirmation_sent_at = Time.now
customer_user.save! validate: false

#admin user
admin_user = User.new email: 'admin@example.com', password: 'test', password_confirmation: 'test', admin: true
admin_user.confirmation_sent_at = Time.now
admin_user.save! validate: false

#shop
shop_address = Address.create name: 'Best Pizza Around', street: 'Musterweg 11', postcode: '12345', city: 'Musterhausen'
shop_user = User.new email: 'shop@example.com', password: 'test', password_confirmation: 'test'
shop_user.confirmation_sent_at = Time.now
shop_user.save! validate: false
shop = Shop.create user: shop_user, address: shop_address

#product-category
product_category = ProductCategory.create name: 'Pizzas', shop: shop

#product
product = Product.create name: 'Pizza Salami', description: 'Best salami pizza around', price: '9.99', product_category: product_category

#order
order = Order.create uuid: SecureRandom.uuid, shop: shop, user: customer_user, address: customer_address
sub_order = SubOrder.create nickname: 'flower-pot', order: order, comment: 'Cut please!'
item = Item.create sub_order: sub_order, product: product, quantity: 1, price: '9.99'
