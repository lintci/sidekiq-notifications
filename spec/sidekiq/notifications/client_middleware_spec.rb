require 'spec_helper'

describe Sidekiq::Notifications::ClientMiddleware do
  subject(:middleware){described_class.new}
  let(:job){{}}

  FakeWorker = Class.new

  it 'wraps block in skylight instrument' do
    expect(::ActiveSupport::Notifications).to receive(:instrument).with("FakeWorker#perform_async", job: job){|&block| block.call}

    expect{|probe| middleware.call(FakeWorker, job, double(:queue), double(:redis_pool), &probe)}.to yield_control
  end
end
