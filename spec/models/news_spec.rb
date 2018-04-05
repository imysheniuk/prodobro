require 'rails_helper'

RSpec.describe(News, type: :model) do
  let(:news) { build(:news) }

  context 'When title field is empty' do
    it 'is invalid' do
      news.title = ''
      expect(news).to_not be_valid
    end
  end

  context 'When description field is empty' do
    it 'is invalid' do
      news.description = ''
      expect(news).to_not be_valid
    end
  end

  context 'When title field is too short' do
    it 'is invalid' do
      news.title = 'No'
      expect(news).to_not be_valid
    end
  end

  context 'When title field is minimum length' do
    it 'is valid' do
      news.title = 'Yes'
      expect(news).to be_valid
    end
  end
end
