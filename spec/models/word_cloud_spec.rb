require 'rails_helper'

RSpec.describe WordCloud, type: :model do

  describe '#sort' do

    it 'sorts some words' do
      wordcloud = WordCloud.new(sentence).sort
      expect(wordcloud).to eq wordsort
    end

    let(:sentence) { 'the red truck likes the red red car' }
    let(:wordsort) do
      { large:  ['red'], medium: ['the'], \
        small:  ['truck', 'likes', 'car']}
    end
  end
end
