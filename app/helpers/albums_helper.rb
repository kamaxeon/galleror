module AlbumsHelper

  def simbol_rating_tag(rep, char="*")
    rep, res = prepare_helper(rep)
    rep.times { res += char}
    content_tag(:span, res)
  end

  def img_rating_tag(rep, img="/img/start.png")
    rep, res = prepare_helper(rep)
    rep.times { res+= image_tag img, size: "16x10"}
    res.to_s.html_safe
  end

  private def prepare_helper(rep)
    rep = rep.to_i
    return rep, ""
  end

end
