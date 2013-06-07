use Rack::Static,
  :root => "public",
  :urls => ["/img", "/js", "/css", "/pages"]

run lambda { |env|
  [
    200,
    {
      'Content-Type' => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}