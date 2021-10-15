require 'user'
require 'database_helpers'

describe User do
  describe '.create' do
    it 'creates a new user' do
      user = User.create(name: 'Test User', username: 'test123', email: 'test@test.com', password: '12345')
      persisted_data = persisted_data(table: 'users', id: user.id)

      expect(user).to be_a User
      expect(user.id).to eq persisted_data['id']
      expect(user.name).to eq 'Test User'
      expect(user.username).to eq 'test123'
      expect(user.email).to eq  'test@test.com'
      expect(user.password).to eq '12345'
    end
  end
end
