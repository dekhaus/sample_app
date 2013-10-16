def page_title(page)
  page.body.match(/<title>(.*)<\/title>/)[1].to_s
end