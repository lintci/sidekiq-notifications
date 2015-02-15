require 'active_support/notifications'

module Sidekiq
  module Notifications
    class ClientMiddleware
      def call(worker_class, job, queue, redis_pool)
        method = job['at'] ? 'perform_in' : 'perform_async'

        ActiveSupport::Notifications.instrument("#{worker_class.to_s}##{method}", job: job) do
          yield
        end
      end
    end
  end
end
