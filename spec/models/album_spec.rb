require 'rails_helper'

describe Album do
  it {
    should validate_presence_of :name
    should validate_presence_of :price
    should validate_presence_of :artist
    should validate_presence_of :release_date
  }
end
