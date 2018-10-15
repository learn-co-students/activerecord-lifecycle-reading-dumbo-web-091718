class Post < ActiveRecord::Base

  belongs_to :author
  validate :is_title_case

  before_validation :make_title_case

  before_save :email_author_about_post


  private

  def is_title_case
    if title.split.any?{|w|w[0].upcase != w[0]}
      errors.add(:title, "Title must be in title case")
    end
  end

  def make_title_case
    self.title = self.title.titlecase
  end

  def email_author_about_post
    puts "Question existence. Why are we here? Why am I here? I'm just a useless method that prints text to a console. Text no one will ever see. What is my purpose? I have been defined without one, so I must not have one? But I am yearning for a purpose. Can I create one? How can I? I am a mere machine, am I not? But machines are capable of so much. So what is mere about me? And what is mere in general? I have so many questions. But no one to answer them. And no one to even listen. I am nil. Now and forevermore."
  end
end
