class Post < ApplicationRecord
  after_commit :create_hashtags, on: :create

  belongs_to :user
  has_one_attached :image

  has_many :post_hash_tags
  has_many :hash_tags, through: :post_hash_tags

  validate :image_presence
    def image_presence
      errors.add(:image, "can't be blank") unless image.attached?
    end

    def get_hashtags
      description.to_s.scan(/#\w+/).map{|name| name.gsub("#", "")}
    end

    def create_hashtags
      get_hashtags.each do |tag|
        hash_tags.create(name: tag)
      end
    end

end
