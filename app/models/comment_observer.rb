class CommentObserver < ActiveRecord::Observer
  def  after_create(comment)
    puts "We will notify the the author in Chapter 9"
  end
end
