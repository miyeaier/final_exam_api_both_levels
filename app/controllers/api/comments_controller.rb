class Api::CommentsController < ApplicationController
  before_action :find_article

  def create
    comment = @article.comments.create(body: params['comment']['body'])

    render json: { comment: comment }, status: 201
  end

  private
  
  def find_article
    @article = Article.find(params['article_id'])
  end
end
