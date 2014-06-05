class ArticlesController < ApplicationController

before_action :authenticate_user!
before_action :set_article, only: [:show, :edit, :update,  :destroy]
protect_from_forgery with: :exception

def index
	@articles = Article.all
end

def new
	@article = Article.new
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
	if @article.update(article_params)
		redirect_to article_path(@article, notice: "Successfully updated.")
	else
		render :edit
	end
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
		params.require(:article).permit(:item, :summary, :qtype, :choice, :answer, :explaination, :status, :category, :source, :question, :reference, :topic, :subject_id, choice_items_attributes: [ :id, :article_id, :item, :is_correct, :_destroy ] )
	end
end
