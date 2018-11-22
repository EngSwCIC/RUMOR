# frozen_string_literal: true

class Ru < ApplicationRecord
  def self.search_working_hour(search)
    return if search.nil? || search.empty?

    @parameter = search
    Ru.where('name ILIKE ?', "%#{@parameter}%").first
  end
end
