class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    answer_params = params.require(:answer).permit(:body)
    @answer = Answer.new(answer_params)
    @answer.question = @question

    # @answer = @question.answers.build(answer_params)

    if @answer.save
      redirect_to question_path(@question), notice: 'Answer Created!'
    else
      render '/questions/show'
    end
  end

  def destroy
    answer = Answer.find(params[:id])
    answer.destroy
    redirect_to question_path(answer.question), notice: 'Answer deleted!'
  end
end
