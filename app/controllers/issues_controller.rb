class IssuesController < ApplicationController
  before_action :set_issue, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only:[:index]

  # GET /issues
  def index
    @issues = Issue.all
    render json: {issues: @issues.map {|issue|
      IssueSerializer.new(issue)
      } }
  end

    # GET /issues/1
    def show
      render json: @issue
    end

    # POST /issues
    def create
      @issue = Issue.new(issue_params)
      if @issue.save
        render json: @issue, status: :created, location: @issue
      else
        render json: @issue.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /issues/1
    def update
      if @issue.update(issue_params)
        render json: @issue
      else
        render json: @issue.errors, status: :unprocessable_entity
      end
    end

    # DELETE /issues/1
    def destroy
      @issue.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue
      @issue = Issue.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def issue_params
      params.require(:issue).permit(:user_id, :title, :category, :active)
    end

  end
