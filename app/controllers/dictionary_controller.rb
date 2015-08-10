class DictionaryController < ApplicationController
  def index
    @dics = Dictionary.all
  end

  def create
    my_ask = params[:ask]
    my_answer = params[:answer]

    Dictionary.create(ask: my_ask, answer: my_answer)

    redirect_to '/dictionary'
  end

  def edit
    @dic = Dictionary.find(params[:id])
  end

  def update
    dic = Dictionary.find(params[:id])
    my_ask = params[:ask]
    my_answer = params[:answer]

    dic.update(ask: my_ask, answer: my_answer)

    redirect_to '/dictionary'
  end

  def destroy
    Dictionary.destroy(params[:id])

    redirect_to '/dictionary'
  end
end
