class ParagraphsController < ApplicationController
  def index
    @paragraph = Paragraph.order("RANDOM()").first
    if @paragraph.blank?
      flash[:error] = 'No Paragraphs found.'
    end
  end
  def create
    @paragraph = Paragraph.create(paragraph_params)
    if @paragraph.invalid?
      flash[:error] = 'The data you entered is invalid.'
    end
    redirect_to paragraphs_path
  end

  private
  def paragraph_params
    params.require(:paragraph).permit(:text, :author)
  end
end
