RSpec.describe 'GraphQL Schema' do
  it 'matches snapshot' do
    current_schema = ApplicationSchema.to_definition
    snapshot = File.read(Rails.root.join("spec/graphql/schema_snapshot.graphql")).str

    expect(snapshot).to eq(current_schema)
  end
end
