class Notifier < ActionMailer::Base
  def greeting_notification(form_input)
    @greeting = form_input
      mail(to: "anna.tsykalova@gmail.com",
        from: form_input.email,
        subject: "New message from #{form_input.email}")
  end
end
