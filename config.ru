use Rack::Static,
  :urls => ["/images", "/js", "/css"],
  :root => "public",
  :index => "index.html"

map "/contact" do
  run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/contact.html', File::RDONLY)
  ]
}
end
