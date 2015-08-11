class GoodsController < ApplicationController

# первая пара екшинов CRUD
#путь /goods GET
	def index
		@goods_count = Good.count
		@goods = Good.all
	end
#путь /goods/#id GET
	def show
		@good = Good.find(params[:id]) #показать товар который мы хотим посмоттреть
	end


# вторая пара екшинов CRUD
#путь /goods/new GET
	def new
		@good = Good.new
	end
#путь /goods POST
	def create
		@good = Good.new
		@good.code = params[:good][:code]
		@good.name = params[:good][:name]
		@good.save

		redirect_to goods_path # возврат на главную с траницу
	end
# третья пара екшинов CRUD
#путь /goods/#id/edit GET
  def edit
	  @good = Good.find(params[:id]) #показать товар который мы хотим редактировать
  end
#путь /goods/#id PUT 
  def update
	  @good = Good.find(params[:id])
	  @good.code = params[:good][:code]
	  @good.name = params[:good][:name]
	  @good.save
	 
	  redirect_to goods_path
  end


# отдельно один екшин CRUD 
#путь /goods/#id DELETE
  def destroy
	  Good.find(params[:id]).destroy

	  redirect_to  goods_path #на глав страницу
  end

end
