require 'spec_helper'

describe Sidekiq::Notifications do
  it 'has a version number' do
    expect(Sidekiq::Notifications::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
