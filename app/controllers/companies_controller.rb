class CompaniesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    render json: Company.all
  end
  def create
    Company.create({'name' => params[:company]['name'] })
    render json: Company.all
  end
end
