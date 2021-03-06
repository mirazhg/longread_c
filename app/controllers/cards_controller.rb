class CardsController < ApplicationController
  def index
    @article = Article.find(params[:article_id])
    @field = @article.fields.find(params[:field_id])
    @cards = @field.cards.all

  end
  def edit
    @article = Article.find(params[:article_id])
    @field = @article.fields.find(params[:field_id])
    @card = @field.cards.find(params[:id])
  end

  def create
    @article = Article.find(params[:article_id])
    @field = @article.fields.find(params[:field_id])
    @card = @field.cards.create(card_params)
    # redirect_to article_path(@article)
    redirect_to (:back)
  end

  def update
    @article = Article.find(params[:article_id])
    @field = @article.fields.find(params[:field_id])
    @card = @field.cards.find(params[:id])
    if @card.update(card_params)
      redirect_to article_path(@article)+"#field_id_#{@field.id}"
    else
      render 'edit'
    end

  end

  def destroy
    @article = Article.find(params[:article_id])
    @field = @article.fields.find(params[:field_id])
    @card = @field.cards.find(params[:id])
    @card.destroy
    redirect_to (:back)
  end

  private
  def card_params
    params.require(:card).permit( :caption,:caver_pict,:lead,:body,:unicum)
  end

end
