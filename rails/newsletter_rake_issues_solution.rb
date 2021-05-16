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
# • missing :environment
# • missing each to trigger the block
# • nil or false? for sent flag
# • memory problem with loading all newsletters at once
# • potential missing database index for sent flag
# • potential N+1 problem when the mailer uses other associations
# • sent flag not set
# • mail send quotas (total sum in 24 hours, number of mails per second)
