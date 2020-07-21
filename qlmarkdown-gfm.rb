cask 'qlmarkdown-gfm' do
  version '1.3.0'
  sha256 'dc25abcd48c2964e2fa33a74c454b6ac6e24d99595354c6d13e148f3509342ad'

  url "https://github.com/Watson1978/QLMarkdownGFM/releases/download/v#{version}/QLMarkdownGFM.qlgenerator.zip"
  appcast 'https://github.com/Watson1978/QLMarkdownGFM/releases.atom',
          checkpoint: '204c4529f1028cfa06d292641c30b76cb5cb8e9102028d9ced7084db18247a03'
  name 'QLMarkdownGFM'
  homepage 'https://github.com/Watson1978/QLMarkdownGFM'

  qlplugin 'QLMarkdownGFM.qlgenerator'
end
