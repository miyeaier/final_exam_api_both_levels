RSpec.describe 'POST /api/comments', type: :request do
  let(:article) { create(:article) }

  before do
    post "/api/articles/#{article.id}/comments", params: {
      comment: { body: 'This is my Comment' }
    }
  end

  subject { response }

  it { is_expected.to have_http_status :created }

  it 'is expected to return a message with the new comment' do
    expect(response_json['comment']['body']).to eq 'This is my Comment'
  end
end
