class PdfsController < ApplicationController
  before_action :set_pdf, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pdfs = Pdf.all
    respond_with(@pdfs)
  end

  def show
    respond_with(@pdf)
  end

  def new
    @pdf = Pdf.new
    respond_with(@pdf)
  end

  def edit
  end

  def create
    def create
        @pdf = PDF.new(course_content_params)
        @pdf.save
        redirect_to @pdf.course
    end
  end

  def update
    @pdf.update(pdf_params)
    respond_with(@pdf)
  end

  def destroy
    @pdf.destroy
    respond_with(@pdf)
  end

  private
    def set_pdf
      @pdf = Pdf.find(params[:id])
    end

    def pdf_params
      params.require(:pdf).permit(:course_id, :uploaded_file)
    end
end
