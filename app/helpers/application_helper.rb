module ApplicationHelper

def full_title(pagetitle)
  basetitle = "Hiphop Bodegaen"
  if (!pagetitle.empty?)
    "#{pagetitle} @ #{basetitle}"
  else
    "#{basetitle}"
  end
end

end
