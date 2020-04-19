# Assume you have a Newsletter ActiveRecord class with some content and a flag
# indicating whether the newsletter has been sent out already.
# Aside from that you have an ActionMailer named NewsletterMailer for sending out single newsletters.

# You wrap it all up in a rake task
# in newsletter.rake
namespace :newsletters do

  task :send_all do
    Newsletter.where(sent: nil).all do |letter|
      NewsletterMailer.newsletter(letter).deliver_now
    end
  end

end

# Do you see any problems here?
