def page_title(response)
  response.body.match(/<title>(.*)<\/title>/)[1].to_s
end