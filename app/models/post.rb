class Post < ActiveRecord::Base
  belongs_to :user
  has_many :post_tags
  has_many :tags, :through => :post_tags
  has_many :comments
  accepts_nested_attributes_for :tags, reject_if: lambda {|attributes| attributes['name'].blank?}
  validates_presence_of :name, :content

  before_destroy :destroy_associated_comments

  def destroy_associated_comments
    Comment.destroy(self.comments.pluck(:id))
  end


end
