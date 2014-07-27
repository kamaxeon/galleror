require 'test_helper'

class AlbumTest < ActiveSupport::TestCase


  def test_0_insert_album
    cont = Album.count
    assert_equal(cont, Album.count)
    album = albums :minimum_valid_album
    album.save
    assert_equal(++cont, Album.count)
  end
  def test_album_can_not_be_empty
    album = albums :empty_album
    assert_not album.save
  end

  def test_album_without_title
    album = albums :album_without_title
    assert_not album.save
  end

  def test_album_with_tilte_and_valid_rating
    album = albums :album_with_title_and_valid_rating
    assert album.save
  end
  def test_album_with_rating_smaller_than_0_and_title
    album = albums :album_with_title_and_rating_0_album
    assert !album.save
  end

  def test_album_with_rating_greater_than_5_and_title
    album = albums :album_with_title_and_rating_10_album
    assert_not album.save
  end

  def test_valid_album
    album = albums :minimum_valid_album
    assert album.save
  end

  def test_valid_album_without_description_and_public
    album = albums :valid_album_without_description_and_with_public
    assert album.save    
  end

  def test_valid_album_without_public_and_description
    album = albums :valid_album_without_public_and_with_description
    assert album.save 
  end

  def test_valid_album_with_all_the_values
    album = albums :valid_album_with_all_the_values
    assert album.save     
  end

end
