class PdfsController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: Pdf.all.order("created_at DESC").limit(5).offset(params[:recordNum])
  end

  def add
    pdf = Pdf.all.order("created_at DESC").first
    render json: pdf
  end

  def create
    pdf = Pdf.new(pdf_params)
    if pdf.save
    else
      render status: 500
    end
  end

  def show
    pdf = Pdf.find(params[:id])
    uri = 'public' + pdf.pdf.to_s
    send_file uri, type: 'application/pdf; charset=utf-8'
  end

  def destroy
    pdf = Pdf.find(params[:id])
    if pdf.destroy
    else
      render status: 500
    end
  end
  
  private  
  def pdf_params
    params.permit(:username, :date, :filename, :pdf, :body)
  end
  
end
