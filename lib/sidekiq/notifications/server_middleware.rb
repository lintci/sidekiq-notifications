require 'active_support/notifications'

module Sidekiq
  module Notifications
    class ServerMiddleware
      def call(worker, job, queue)
        ActiveSupport::Notifications.instrument('app.worker.perform', title: "#{worker.class.to_s}#perform", job: job) do
          yield
        end
      end
    end
  end
end
