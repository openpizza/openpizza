require 'elasticsearch/transport'

if Rails.env.production?
  Elasticsearch::Model.client = Elasticsearch::Client.new host: ENV['ELASTICSEARCH']
end
