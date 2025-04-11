class QuestionsController < ApplicationController
  def ask
    if request.post?
      redirect_to answer_path(question: params[:question])
    end
  end

  def answer
    @question = params[:question]

    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.ends_with?('?')
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
