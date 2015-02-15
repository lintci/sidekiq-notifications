describe Sidekiq::Notifications::ServerMiddleware do
  subject(:middleware){described_class.new}
  let(:job){{}}

  FakeWorker = Class.new

  it 'wraps block in skylight instrument' do
    expect(::ActiveSupport::Notifications).to receive(:instrument).with(
      'app.worker.perform',
      title: 'FakeWorker#perform',
      job: job
    ){|&block| block.call}

    expect{|probe| middleware.call(FakeWorker.new, job, double(:queue), &probe)}.to yield_control
  end
end
