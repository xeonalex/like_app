class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    @topics = Question.all
  end

  def new
    @question = Question.new
  end

  def edit
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @question = @topic.questions.create(question_params)
    redirect_to topic_path(@topic)

  end

  def update
    respond_to do |format|
      if @question.update(question_params)
        redirect_to topic_path(@topic)
      else

      end
    end
  end

  def destroy
    @topic = Topic.find(params[:topic_id])
    @question = @topic.questions.find(question_params)
    @question.destroy
    redirect_to topic_path(@topic)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:content)
    end
end
