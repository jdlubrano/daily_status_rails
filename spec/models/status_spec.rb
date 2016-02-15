RSpec.describe Status do
  context 'creation' do
    context 'content' do
      let(:status) { build :status }

      it 'does not allow empty content' do
        status.content = ''
        expect(status).not_to be_valid
      end

      it 'does not allow duplicate statuses' do
        status.save
        s = build :status, content: status.content, show_date: status.show_date + 1.day
        expect(s).not_to be_valid
      end

      it 'allows long content' do
        status.content = Faker::Lorem.characters(1024)
        expect(status).to be_valid
      end
    end

    context 'show_date' do
      let!(:status) { create :status }

      it 'has a unique show_date' do
        s = build :status
        expect(s.save).to be_falsey
      end
    end
  end
end

