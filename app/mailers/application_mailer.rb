# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'user@realdomain.com'
  layout 'mailer'
end
