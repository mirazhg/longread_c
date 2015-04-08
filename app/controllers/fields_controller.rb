class FieldsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @field = @article.fields.create(field_params)
    redirect_to article_path(@article)
  end

  private
    def field_params
      params.require(:field).permit( :caption,:caver_pict,:lead,:body,:teg,:unicum)
    end

end
