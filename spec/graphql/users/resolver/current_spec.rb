RSpec.describe Users::Resolver::Current, type: :request do
  let(:headers) { { Authorization: auth_header(user) } }
  let(:user) { create(:user) }
  let(:params) { { query: query } }
  let(:query) { '{ currentUser { email firstName} }' }

  before do
    post '/graphql', params: params, headers: headers
  end

  describe 'Success' do
    it 'responds to query' do
      expect(response).to be_ok
      expect(response).to match_json_schema('users/resolver/current/current')
    end
  end

  describe 'Failure' do
    let(:headers) { {} }
    it 'unauthenticated' do
      expect(response).to be_ok
      expect(response).to match_json_schema('users/resolver/current/unauthenticated')
    end
  end
end
