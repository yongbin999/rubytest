class ArticlesController < ApplicationController
	http_basic_authenticate_with name: "test", 
   password: "test", 
   except: [:index, :show]


  def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end


	def edit
		@article = Article.find(params[:id])
	end
	
	def delete
		@article = Article.find(params[:id])
  @article.destroy
 
  redirect_to articles_path
	end

def create
  	#render plain: params[:article].inspect
  	@article = Article.new(article_params)
  
  respond_to do |format|
  	if @article.save
      format.html { redirect_to @article, notice: 'successfully created.' }
  	 else
  		format.html {render 'new'}
  	 end
    end
  end

  def update
  	@article = Article.find(params[:id])
  respond_to do |format|
  	if @article.update(article_params)
  		format.html { redirect_to @article, notice: 'successfully updated.' }
  	else
  		format.html {render 'edit'}
  	end
  end
end

  private
  def article_params
  	params.require(:article).permit(:title, :text)
  end

end
