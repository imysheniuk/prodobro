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
      campaign.title = 'qw'
      expect(campaign).to_not be_valid
    end
  end

  context 'when title field is too long' do
    it 'is invalid' do
      campaign.title = 'QwertyuiopQwertyuiopQwertyuiopq'
      expect(campaign).to_not be_valid
    end
  end


  ## ==== description trsts doesn't work at all :( ========
  context 'when description field is empty' do
    it 'is invalid' do
      campaign.description = ''
      expect(campaign).to_not be_valid
    end
  end

  # context 'when description field is too short' do
  #   it 'is invalid' do
  #     campaign.description = 'Qwe'
  #     expect(campaign).to_not be_valid
  #   end
  # end

  context 'when description field is too long' do
    it 'is invalid' do
      campaign.description = 'QwertyuiopQwertyuiop' * 101
      expect(campaign).to_not be_valid
    end
  end

  context 'when current amount field includes letters' do
    it 'sets an error message' do
      campaign.current_amount = '12q3'
      campaign.valid?
      expect(campaign.errors.messages[:current_amount]).to eq ['is not a number']
    end
  end
  
  ##============= не працює якщо є крапка ===================
  context 'when current amount field includes invalid symbols' do
    it 'is invalid' do
      campaign.current_amount = '12%3'
      expect(campaign).to_not be_valid
    end
  end

  context 'when current amount field includes space' do
    it 'is invalid' do
      campaign.current_amount = '12 3'
      expect(campaign).to_not be_valid
    end
  end

  context 'when current amount field is empty' do
    it 'is invalid' do
      campaign.current_amount = ''
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

  ##============= не працює якщо є крапка ===================
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

  context 'when requisite field is too long' do
    it 'is invalid' do
      campaign.requisite = '12345678901234567'
      expect(campaign).to_not be_valid
    end
  end

  context 'when requisite field is too short' do
    it 'is invalid' do
      campaign.requisite = '12345678901234q'
      expect(campaign).to_not be_valid
    end
  end
end
