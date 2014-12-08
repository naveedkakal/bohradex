require 'rails_helper'

RSpec.describe Contact, :type => :model do  
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name  }
  it { should validate_presence_of :email      }
  it { should validate_presence_of :gender     }
  it { should validate_uniqueness_of :email    }

  describe 'scopes' do
    let!(:boy)  { FactoryGirl.create(:boy)  }
    let!(:girl) { FactoryGirl.create(:girl) }

    it '#boys' do
      expect(described_class.boys).to include(boy)
      expect(described_class.boys).to_not include(girl)
    end

    it '#girls' do
      expect(described_class.girls).to include(girl)
      expect(described_class.girls).to_not include(boy)
    end
  end
end
