require 'test_helper'

class AlbumsHelperTest < ActionView::TestCase
  def test_simbol_rating_tag_with_5_repetitions
    res = simbol_rating_tag 5
    excepted ="<span>*****</span>"
    assert_equal(excepted, res)
  end

  def test_simbol_rating_tag_with_0_repetitions
    res = simbol_rating_tag 0
    excepted="<span></span>"
    assert_equal(excepted, res)
  end

  def test_simbol_rating_tag_with_another_simbol_and_10_repetitions
    res = simbol_rating_tag 10, "#"
    excepted = "<span>##########</span>"
    assert_equal(excepted, res)
  end

  def test_img_rating_tag_with_0_repetitions
    res = img_rating_tag 0
    excepted = ""
    assert_equal(excepted, res)
  end

  def test_img_rating_tag_with_2_repetitions
    res = img_rating_tag 2
    excepted = "<img alt=\"Start\" height=\"10\" src=\"/images/start.png\" width=\"16\" /><img alt=\"Start\" height=\"10\" src=\"/images/start.png\" width=\"16\" />"
    assert_equal(excepted, res)
  end

  def test_img_rating_tag_with_custom_image_and_1_repetition
    res = img_rating_tag 1, "/img/custom_image.png"
    excepted = "<img alt=\"Custom image\" height=\"10\" src=\"/img/custom_image.png\" width=\"16\" />"
    assert_equal(excepted, res)
  end
end
