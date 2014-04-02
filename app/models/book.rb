class Book < ActiveRecord::Base
  belongs_to :user
  def self.send_mail(book, user)
    Notifier.greeting_mail(book, user).deliver
  end
end
