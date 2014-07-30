module AlbumsHelper

  def simbol_rating_tag(rep, char="*")
    #rep, res = prepare_helper(rep)
    #ep.times { res += char}
    #content_tag(:span, res)
    content_tag :span, char * rep.to_i
  end

  def img_rating_tag(rep, img="start.png")
    #rep, res = prepare_helper(rep)
    #rep.times { res+= image_tag img, size: "16x10"}
    #res.to_s.html_safe
    image_tag(img, size: "16x10") * rep.to_i
  end

  private def prepare_helper(rep)
    rep = rep.to_i
    return rep, ""
  end

end
