class FieldsController < ApplicationController

  def edit
    @article = Article.find(params[:article_id])
    @field = @article.fields.find(params[:id])
  end

  def create
    @article = Article.find(params[:article_id])
    @field = @article.fields.create(field_params)
    redirect_to article_path(@article)+"#field_id_#{@field.id}"
  end

  def update
    @article = Article.find(params[:article_id])
    @field = @article.fields.find(params[:id])
    if @field.update(field_params)
      redirect_to article_path(@article)+"#field_id_#{@field.id}"
    else
      render 'edit'
    end

  end

  def destroy
    @article = Article.find(params[:article_id])
    @field = @article.fields.find(params[:id])
    @field.destroy
    redirect_to article_path(@article)
  end

  private
    def field_params
      params.require(:field).permit( :caption,:caver_pict,:lead,:body,:teg,:unicum)
    end

end
