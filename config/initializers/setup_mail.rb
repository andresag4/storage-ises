ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address	=>	'smtp.gmail.com',
    :port		=>	'587',
    :authentication =>	:plain,
    :user_name	=>	'bryanx5163@gmail.com',
    :password	=>	'bryanlira',
    :domain	=>	'mail.google.com',
    :enable_starttls_auto => true
}