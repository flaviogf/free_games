module FreeGames
  class Message < Struct.new(:uid, :updateDate, :titleText, :mainText, :redirectionUrl, keyword_init: true)
  end
end
