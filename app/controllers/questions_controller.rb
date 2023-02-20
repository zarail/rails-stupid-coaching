class QuestionsController < ApplicationController
  def ask
    # we just define the method although empty!
    # because we have a "/ask", we need this "ask action! (or the controller method)"
    # only for linking purposes (links the view with the routes)
  end

  # @ here means: "make this variable available in the view" --> for passing info

  def answer
    question = params[:question]
    if question == 'I am going to work'
      @answer = 'Great!' # store the answer in the "answer" variable
    elsif question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
