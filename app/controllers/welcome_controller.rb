class WelcomeController < ApplicationController
  def index
    @words = WordCloud.new(custom_string).sort
  end

  private

  def custom_string
    # http://skateipsum.com/get/3/0/JSON
    ['the red truck likes the red red car',
     'the buffalo buffalo buffalo string that the people like',
     ' that that is is that that is not is not that that is that is it is it not',
     'Buffalo buffalo Buffalo buffalo buffalo buffalo Buffalo buffalo',
    ].shuffle.first
  end
end
