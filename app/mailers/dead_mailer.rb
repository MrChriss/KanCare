# to be used with Devise - prevent emails from being sent
class DeadMailer < ApplicationMailer
  def confirmation_instructions(record, token, opts={}); end
  def reset_password_instructions(record, token, opts={}); end
  def unlock_instructions(record, token, opts={}); end
  def email_changed(record, opts={}); end
  def password_change(record, opts={}); end
end
