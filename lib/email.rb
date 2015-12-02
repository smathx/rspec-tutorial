require 'sidekiq'

class Email
end

class EmailVerificationJob
    include Sidekiq::Worker    
    
    def perform(email_id)
        email = Email.find(email_id)
        UserMailer.send_verification_email(email)        
    end
end

class UserMailer
end