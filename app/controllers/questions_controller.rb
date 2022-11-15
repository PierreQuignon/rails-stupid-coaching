class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:questionform]
    if @question == "I'm going to work"
      @response = "Great!"
    elsif @question.end_with?("?")
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
