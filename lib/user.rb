# frozen_string_literal: true

class User
  attr_accessor :email, :age

  @@all = []

  def initialize(email, age)
    @email = email
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_email(email_to_find)
    @@all.find { |user| user.email == email_to_find }
  end
end
