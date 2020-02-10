class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.last == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    # @answer = 'Great!' if @question == 'I am going to work'
    # @answer = 'Silly question, get dressed and go to work!' if @question.last == '?'
    # @answer = "I don't care, get dressed and go to work!"
  end
end
