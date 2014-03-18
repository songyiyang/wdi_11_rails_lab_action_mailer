# Sending Email with Rails

## Creating a Contact Form

(when a visitor wants to send an email to you, the app owner)

### Demo

rails g scaffold Greeting email:text content:text

# config/routes.rb
root to: 'greeting#index'

touch app/mailers/notifier.rb

# app/mailers/notifier.rb
class Notifier < ActionMailer::Base
  def greeting_notification(form_input)
    mail(to: "someone@gmail.com", from: form_input.email, subject: "New message from #{form_input.email}")
  end
end

# app/views/notifier/greeting_notification.text.erb
Message from <%= @greeting.email %>
<%= @greeting.content %>



### Lab

