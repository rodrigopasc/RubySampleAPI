require 'rails_helper'

RSpec.describe Credential, type: :model do
  it { is_expected.to validate_presence_of :username }
  it { is_expected.to validate_presence_of :password_digest }
end
