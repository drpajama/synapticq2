class ArticlesController < ApplicationController

before_action :authenticate_user!
before_action :set_article, only: [:show, :edit, :update,  :destroy]
protect_from_forgery with: :exception

def index
	@articles = Article.all
end

def new
	@article = Article.new
	@article.choice_items.build
	@article.choice_items.build
	@article.choice_items.build
	@article.choice_items.build
end

def edit
end

def create
	@article = Article.new(article_params)

	if @article.save
		redirect_to @article
	else
		render 'new'
	end
end

def update
end

def destroy
	@article.destroy
	redirect_to articles_path
end

def show
end

private
	def set_article
		@article = Article.find(params[:id])
	end

	def article_params
		params.require(:article).permit(:item, :summary, :qtype, :choice, :answer, :explaination, :status, :category, :source, :reference, choice_items_attributes: [ :item, :is_correct ] )
	end
end
