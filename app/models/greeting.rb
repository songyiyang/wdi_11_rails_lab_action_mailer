class Greeting < ActiveRecord::Base
  after_commit :send_notification

  def send_notification
    Notifier.greeting_notification(self).deliver
  end

end
