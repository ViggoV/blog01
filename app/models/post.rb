class Post < ActiveRecord::Base
  attr_accessible :content, :embed_code, :footer_id, :title
end
