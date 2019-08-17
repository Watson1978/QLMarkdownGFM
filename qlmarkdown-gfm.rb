cask 'qlmarkdown-gfm' do
  version '1.2.3'
  sha256 '1b1388601a047c3159f4569691efe69104749c79cb4f83c92dc5c1b1fca98010'

  url "https://github.com/Watson1978/QLMarkdownGFM/releases/download/v#{version}/QLMarkdownGFM.qlgenerator.zip"
  appcast 'https://github.com/Watson1978/QLMarkdownGFM/releases.atom',
          checkpoint: '204c4529f1028cfa06d292641c30b76cb5cb8e9102028d9ced7084db18247a03'
  name 'QLMarkdownGFM'
  homepage 'https://github.com/Watson1978/QLMarkdownGFM'

  qlplugin 'QLMarkdownGFM.qlgenerator'
end
