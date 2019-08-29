RSpec.describe Authentication::Mutation::SignUp, type: :request do
  let(:params) { { query: query, variables: variables } }
  let(:query) do
    %q(
      mutation($firstName: String!, $email: String!, $password: String!) {
        signUp(firstName: $firstName, email: $email, password: $password) {
          user {
            id firstName email
          }
          meta {
            tokens {
              access
              refresh
            }
          }
          errors {
            path
            message
          }
        }
      }
    )
  end
  let(:variables) do
    {
      firstName: 'Name 1',
      email: 'user1@example.com',
      password: 'password'
    }
  end

  before do
    post '/graphql', params: params
  end

  describe 'Success' do
    it 'responds to query' do
      expect(response).to be_ok
      expect(response).to match_json_schema('authentication/mutation/sign_up/sign_up')
    end
  end

  describe 'Failure' do
    let(:variables) do
      {
        firstName: '',
        email: '',
        password: ''
      }
    end
    it 'returns validation errors' do
      expect(response).to be_ok
      expect(response).to match_json_schema('authentication/mutation/sign_up/validation_errors')
    end
  end
end
