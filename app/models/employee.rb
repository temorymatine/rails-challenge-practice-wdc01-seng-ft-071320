class Employee < ApplicationRecord
    belongs_to :company
    validates :name, length:{minimum:5}

    validates :name, presence: true
    validates :title, presence: true


end