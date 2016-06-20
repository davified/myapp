class PagesController < ApplicationController

  def index  #here, you define functions (e.g. to control what your user can do / see)
    @title = "Sesame Street"
    # render 'index' <-- this is implicitly carried out by the index function. this is what the method is actually doing (loading the index page), but you don't have to tell it to th
  end

  def faq
    @questions = ['Can you tell me how to get to, how to get to Sesame Street?', 'Who\'s the boss here?', 'Where\'s Bert?']
    # capturing user input in the url
    i = params[:q].to_i

    @current_question = @questions[i]

  end

  def contact
  end
end
