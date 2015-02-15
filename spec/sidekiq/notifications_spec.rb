require 'spec_helper'

describe Sidekiq::Notifications do
  it 'has a version number' do
    expect(Sidekiq::Notifications::VERSION).not_to be nil
  end

  it 'adds Notifications as last server middleware' do
    expect(Sidekiq.server_middleware.entries.last.klass).to eq(Sidekiq::Notifications::ServerMiddleware)
  end

  it 'adds Notifications as last client middleware' do
    expect(Sidekiq.client_middleware.entries.last.klass).to eq(Sidekiq::Notifications::ClientMiddleware)
  end
end
