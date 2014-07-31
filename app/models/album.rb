class Album < ActiveRecord::Base
  validates :title, presence: true
  validates :rating, numericality: {
    only_integer: true,
    greater_than: 0,
    less_than: 6,
    allow_blank: true }

    scope :oldest, -> { where (:created_at).firsrt}
    scope :more_3_start, -> { where("rating  > ?", 3).order(rating: :desc, created_at: :asc)}
    scope :published, -> { where(public: true) }
    #scope :published, Proc.new { where(public: true) } Ruby < 2
    #scope :published, lambda { where(public: true) } Ruby < 2
    #scope: published, where(public:true) Rails 3

    has_many :photos
    belongs_to :user
end
