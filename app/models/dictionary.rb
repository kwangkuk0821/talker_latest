class Dictionary < ActiveRecord::Base
  def time
    created_at.localtime.strftime("%Y년 %m월 %d일 %H시 %M분")
  end
end
