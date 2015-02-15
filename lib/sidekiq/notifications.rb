require 'sidekiq'

require_relative 'notifications/version'
require_relative 'notifications/client_middleware'
require_relative 'notifications/server_middleware'

Sidekiq.configure_client do |config|
  config.client_middleware do |chain|
    chain.add Sidekiq::Notifications::ClientMiddleware
  end
end

Sidekiq.configure_server do |config|
  config.client_middleware do |chain|
    chain.add Sidekiq::Notifications::ClientMiddleware
  end
  config.server_middleware do |chain|
    chain.add Sidekiq::Notifications::ServerMiddleware
  end
end
