require 'rails_helper'
require 'shoulda-matchers'

RSpec.describe User, type: :model do
  subject (:user) do
    FactoryBot.build(:user,
    email: "a@a.com",
    session_token: "this_is_a_token",
    password_digest: "fdhjiobgeqdvoqe",
    password: "worst_password_ever")
  end

    describe 'validations' do
      it { should validate_presence_of(:email) }
      it { should validate_presence_of(:password_hash) }
      it { should validate_presence_of(:password) }
    end
end
