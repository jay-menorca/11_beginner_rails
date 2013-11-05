class BlogArticlesController < ApplicationController

def index
	@articles = BlogArticle.all
end

def show
	@article = BlogArticle.find(params[:id])
end

def new
	@article = BlogArticle.new
end

def create
	@article = BlogArticle.new
	@article.title = params[:blog_article][:title]
	@article.content = params[:blog_article][:content]
	
	if @article.save
#		redirect_to blog_article_path(@article)
		redirect_to @article
	else
		render :new
	end
end

def edit
	@article = BlogArticle.find(params[:id])
end

def update
	@article = BlogArticle.find(params[:id])
	@article.update_attributes(article_params)

	if @article.save
		redirect_to @article
	else
		render :edit
	end
end

def destroy
end

private
def article_params
	params.require(:blog_article).permit(:title, :content)
end

end