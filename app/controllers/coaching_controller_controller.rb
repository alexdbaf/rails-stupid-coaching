class CoachingControllerController < ApplicationController
  def answer
    @query = params[:query]
    @answer = coach_answer_enhanced(@query)
  end

  def ask
  end

  private

  def coach_answer(your_message)
    if your_message.end_with?("?")
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
    standard_a = coach_answer(your_message.capitalize)
    if your_message == your_message.upcase && standard_a != ""
      return "I can feel your motivation! #{standard_a}"
    else
      return standard_a
    end
  end

end
