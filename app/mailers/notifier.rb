class Notifier < ActionMailer::Base
  def greeting_notification(form_input)
    @greeting = form_input
    binding.pry
      mail(to: "songyiyang2012@gmail.com",
        from: form_input.email,
        subject: "New message from #{form_input.email}")
  end
  def greeting_mail(book, user)
    @greeting = book.title
    Pony.mail(to: "yeeyangsong@gmail.com",from: "songyiyang2012@gmail.com",subject: "greeting")
    binding.pry
  end
end
