module Api
  class IssuesController < ApplicationController
    def index
      @issues = current_nation.issues
      render :index
    end

    private
    def issue_params
      params.require(:issue).permit(:title, :body)
    end
  end
end
