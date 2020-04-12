class Order < ApplicationRecord
  belongs_to :customer
  has_many :tickets
  after_create do |order|
    logger.info "capacity: #{event_venue.capacity} ordered: #{order.tickets}"
  end
  after_create do |order|
    updated_at_in_database order
  end
end
