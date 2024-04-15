# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  if Rails.env == 'develop'
    default from: 'user@realdomain.com'
  else
    default from: 'k-noguchi@wwwave.jp'
  end
  layout 'mailer'
end
