class Page < ActiveRecord::Base
	belongs_to :user

  validates :name,
    :presence => true,
    :format => {:with => /About|Contact/i}

  validates :content,
    :presence => true,
    :length => {:minimum => 5, :maximum => 250}

  ALLOWED_NAMES = ["About", "about", "Contact", "contact"]

  # validate :name_is_allowed

  def name_is_allowed
    ALLOWED_NAMES.each do |name|
      if Page.find_by_name(name)
        errors.add("You have already added a #{name} page!")
      end
    end
  end

end