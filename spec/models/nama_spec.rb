require 'rails_helper'

RSpec.describe Nama, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:buyer) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:quantity) }
    it { should validate_presence_of(:address) }
    it { should validate_presence_of(:provider) }

    it { should validate_numericality_of(:price) }
    it { should validate_numericality_of(:quantity) }
  end
end
