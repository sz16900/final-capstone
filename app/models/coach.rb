class Coach < ApplicationRecord
    has_many :appointments 
    has_many :users, through: :appointments

    before_create :slugify 
    def slugify 
        self.slug = name.parameterize
    end

    def avg_score
        reviews.average(:score).round(2).to_f
    end
end
