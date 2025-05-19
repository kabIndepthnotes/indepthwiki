--- https://stackoverflow.com/questions/40993488/convert-markdown-links-to-html-with-pandoc#49396058
function Link(el)
  el.target = string.gsub(el.target, "%.pd", ".pdf")
  return el
end
