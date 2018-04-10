require 'rails_helper'

RSpec.describe Campaign, type: :model do
  let(:campaign) { build(:campaign) }

  context 'when title field is empty' do
    it 'is invalid' do
      campaign.title = ''
      expect(campaign).to_not be_valid
    end
  end

  context 'when title field is too short' do
    it 'is invalid' do
      campaign.title = 'Qwertyuio'
      expect(campaign).to_not be_valid
    end
  end

  context 'when title field is too long' do
    it 'is invalid' do
      campaign.title = 'QwertyuiopQwertyuiopQwertyuiopq'
      expect(campaign).to_not be_valid
    end
  end

  context 'when title field includes numbers' do
    it 'is invalid' do
      campaign.title = 'Qw25edf45a'
      expect(campaign).to_not be_valid
    end
  end

  context 'when description field is empty' do
    it 'is invalid' do
      campaign.description = ''
      expect(campaign).to_not be_valid
    end
  end

  context 'when description field is too short' do
    it 'is invalid' do
      campaign.description = 'QwertyuiopQwertyuiopQwertyuio'
      expect(campaign).to_not be_valid
    end
  end

  context 'when needed amount field includes letters' do
    it 'sets an error message' do
      campaign.needed_amount = '12q3'
      campaign.valid?
      expect(campaign.errors.messages[:needed_amount]).to eq ['is not a number']
    end
  end

  context 'when needed amount field includes invalid symbols' do
    it 'is invalid' do
      campaign.needed_amount = '12_.%+3'
      expect(campaign).to_not be_valid
    end
  end

  context 'when needed amount field includes space' do
    it 'is invalid' do
      campaign.needed_amount = '12 3'
      expect(campaign).to_not be_valid
    end
  end

  context 'when needed amount field is too long' do
    it 'is invalid' do
      campaign.needed_amount = '12345678'
      expect(campaign).to_not be_valid
    end
  end

  context 'when needed amount field is empty' do
    it 'is invalid' do
      campaign.needed_amount = ''
      expect(campaign).to_not be_valid
    end
  end

  context 'when requisite field is empty' do
    it 'is invalid' do
      campaign.requisite = ''
      expect(campaign).to_not be_valid
    end
  end
end
