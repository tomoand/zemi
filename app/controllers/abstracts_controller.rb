class AbstractsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_abstract

  def set_abstract
    @abstract = Abstract.first
  end

  def index
    render json: @abstract
  end

  def update
    @abstract = Abstract.find_by(id: params[:id])
    @abstract.body = params[:body]
    @abstract.title = params[:title]
    @abstract.textbook = params[:textbook]
    @abstract.date = params[:date]
    @abstract.form = params[:form]
    if @abstract.save
    else
      render status: 500
    end
  end
  
end
