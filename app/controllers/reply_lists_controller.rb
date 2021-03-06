class ReplyListsController < ApplicationController
  def index
    @list = ReplyList.all
  end

  def add
    if request.post? then
      @list = ReplyList.create(list_params)
      @list.update(:count => 0)
      goback
    else
      @list = ReplyList.new()
    end
  end

  def edit
    @list = ReplyList.find(params[:id])
    if request.patch? then
      @list.update(list_params)
      goback
    end
  end

  def detail
    @list = ReplyList.find(params[:id])
  end

  private
  def list_params
    params.require(:reply_list).permit(:reply, :count)
  end

  private
  def goback
    redirect_to '/reply_lists'
  end
end
