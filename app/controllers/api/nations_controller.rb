module Api
  class NationsController < ApplicationController
    def index
      @nations = Nation.all
      render :index
    end

    def show
      @nation = Nation.find(params[:id])
      if @nation
        render :show
      else
        render json: ["Nation not found"], status: 404
      end
    end

    def edit
      @nation = Nation.find(params[:id])
      render :edit
    end

    # def destroy
    #   sign_out
    #   redirect_to new_session_url
    # end

    def update
      @nation = Nation.find(params[:id])
      if @nation.update_attributes(nation_params)
        render :show
      else
        render json: @nation.errors.full_messages, status: 422
      end
    end

    def get_issues
      nation_id = current_nation.id
      issue_ids = Issue.pluck(:id).sample(3)
      issue_ids.each do |issue_id|
        nation_issue = NationIssue.new
        nation_issue.nation_id = nation_id
        nation_issue.issue_id = issue_id
        nation_issue.save
      end
      render 'api/issues/index'
    end

    private
    def nation_params
      params.require(:nation).permit(:name, :password, :currency, :animal,
                                     :population, :leader_title, :motto,
                                     :recent_issues, :flag_url)
    end
  end
end
