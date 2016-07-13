require 'rails_helper'

RSpec.describe User, :type => :model do
  
  let(:user) { FactoryGirl.build(:user) }
  subject { user }

  describe '#validations' do    
    it { is_expected.to be_valid }
  end

  describe '#associations' do
    it { is_expected.to have_many :enrollments }
    it { is_expected.to have_many :courses }
  end

end
