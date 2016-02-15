RSpec.describe Status do
  it 'tests my sanity' do
    expect(true).to be(true)
  end
  context 'creation' do
    let(:status) { build :status }
    it 'gives me a status' do
      expect(status).not_to be_nil
    end
  end
end

