class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @user_answer = ""
    if params["user_ask"]
      @user_question = params["user_ask"]
      if params["user_ask"] == 'I am going to work'
        @user_answer = 'Great!'
      elsif params["user_ask"].gsub("?")
        @user_answer = "I don't care, get dressed and go to work!"
      else
        @user_answer = "Silly question, get dressed and go to work!"
      end
    end
  end
end
