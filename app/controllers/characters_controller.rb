class CharactersController < ApplicationController

  # tell the show action to render a page template that is the same name as a parameter (page) that is passed in
  def show
    page = params[:page].to_i

    @character_name = ['Bert', 'Big Bird', 'Elmo', 'Cookie Monster', 'Ernie']
    @current_char_name = @character_name[page]

    @character_description = ['Bert is analytical, responsible, and the complete and utter opposite of his eccentric roommate and forever best friend, Ernie. When he’s not playing checkers with his pigeon Bernice, Bert, a true model of dignity and decorum, spends his days collecting bottle caps and paper clips.',
                              'Big Bird is the "everychild" of Sesame Street. Fine feathered friend to all, he may get overly excited about new discoveries and extremely disappointed when things don’t work out, but this bird is always willing to try again, correct his mistakes, and find a solution to his problems. Big Bird is a viewer’s six-year-old guide to Sesame Street.',
                              'Elmo is everybody\'s favorite furry red monster. But more important than anything else, this cute, cuddly, and courageously curious three and a half year-old always finds a way to make the most of whatever situation he\'s in. An eternal child and perennial optimist, Elmo is the very essence of Sesame Street innocence and enthusiasm.',
                              'Emotionally, physically, and spiritually attached to cookies, at first glance the world’s most famous monster appears to have a one-track mind. But in actuality Cookie Monster is a deeply complicated individual. A monster of economy, he can convey worlds of meaning with a simple gesture.',
                              'Ernie is Bert\'s long-time best friend']
    @current_character_description = @character_description[page]
    @images = ['1bert.png', '2bigbird.png', '3elmo.png', '4cookie.png', '5earnie.png']
    @current_image = @images[page]
  end

end
