# frozen_string_literal: true

json.extract! ru, :id, :name, :working_hour, :location, :created_at, :updated_at
json.url ru_url(ru, format: :json)
