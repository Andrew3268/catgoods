xml.instruct!

xml.urlset(xmlns: "http://www.sitemaps.org/schemas/sitemap/0.9") do
  xml.url do
    xml.loc root_url
    xml.changefreq("daily")
    xml.priority "1.0"
  end

  @posts.each do |posts|
    xml.url do
      xml.loc post_url(posts)
      xml.changefreq("daily")
      xml.priority "0.8"
      xml.lastmod posts.updated_at.strftime("%Y-%m-%dT%H:%M:%S.%2N%:z")
    end
  end

  @jibsas.each do |jibsas|
    xml.url do
      xml.loc jibsa_url(jibsas)
      xml.changefreq("daily")
      xml.priority "0.8"
      xml.lastmod jibsas.updated_at.strftime("%Y-%m-%dT%H:%M:%S.%2N%:z")
    end
  end

end