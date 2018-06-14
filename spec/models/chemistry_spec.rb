require 'rails_helper'

RSpec.describe Chemistry, type: :model do
  # Validations
  it { is_expected.to validate_presence_of :name }
end
