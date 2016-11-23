module GeneralHelper
  def feed_news rss_origin
    @feed = rss_origin;
    render 'news'
  end

  def background_random
    images = ['hammer-1920.jpg', 'paulista.jpg', 'justice-book-1920.jpg', 'library-1920.jpg', 'Sao-Paulo-bridge.jpg']
    'background/' + images[rand(images.size)];
  end
end
