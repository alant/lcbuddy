class TodoList < ApplicationRecord
  belongs_to :todostatus
  belongs_to :user
  belongs_to :problem
end
