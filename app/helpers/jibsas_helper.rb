module JibsasHelper
  def render_with_jhashtags(j_hashtag)
    j_hashtag.gsub(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/){|word| link_to word, "/jibsas/jhashtag/#{word.delete('#')}"}.html_safe
  end 
end
