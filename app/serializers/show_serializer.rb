class ShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre, :description, :coverart, :release_date, :episodes, :rss, :site, :voice_artist_string
end
