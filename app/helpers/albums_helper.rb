module AlbumsHelper
  def simbol_rating_tag(rep, char)
    res = ""
    rep.to_i.times { res+= char}
    content_tag(:span, res)
  end

  def img_rating_tag(rep, img="/img/start.png")
    res = ""
    rep.to_i.times { res+= image_tag(img, size: "16x10")}
    res.to_s.html_safe
  end
end
