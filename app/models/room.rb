class Room < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["name", "address","introduction"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["reservations", "user"]
    end
    
    mount_uploader :avatar, AvatarUploader
    has_many :reservations, dependent: :destroy
    belongs_to :user
    

    validates :name,presence: true
    validates :introduction,presence: true
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 1 }
    validates :address,presence: true

    def reserved_by?(user)
        reservations.where(user_id:user.id).exsists?
    end

end
