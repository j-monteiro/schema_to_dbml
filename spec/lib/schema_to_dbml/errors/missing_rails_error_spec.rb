# frozen_string_literal: true

RSpec.describe Errors::MissingRailsError do
  describe '#initialize' do
    context 'when no message is provided' do
      it 'sets a default message' do
        expect(subject.message).to eq('Rails is mandatory to run this gem.')
      end
    end

    context 'when a message is provided' do
      let(:custom_message) { 'Custom error message' }
      let(:error) { described_class.new(custom_message) }

      it 'sets the provided message' do
        expect(error.message).to eq(custom_message)
      end
    end
  end
end
