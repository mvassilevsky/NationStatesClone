module Api
  class IssuesController < ApplicationController
    def index
      @issues = current_nation.issues
      render :index
    end

    def show
      @issue = Issue.find(params[:id])
      if @issue
        render :show
      else
        render json: ["Issue not found"], status: 404
      end
    end

    private
    def issue_params
      params.require(:issue).permit(:title, :body)
    end
  end
end
