class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # here we set the instance to the value of the param in the ask view
    @question = params[:question] # this is what the user types
    if @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and got to work!"
    end
  end
end
