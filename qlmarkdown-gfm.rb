cask 'qlmarkdown-gfm' do
  version '1.2.1'
  sha256 'b55e17ef4dc5750c5b4c064165b119aa2209714f5e9c5e808c5e2ae249bd52fb'

  url "https://github.com/Watson1978/QLMarkdownGFM/releases/download/v#{version}/QLMarkdownGFM.qlgenerator.zip"
  appcast 'https://github.com/Watson1978/QLMarkdownGFM/releases.atom',
          checkpoint: '204c4529f1028cfa06d292641c30b76cb5cb8e9102028d9ced7084db18247a03'
  name 'QLMarkdownGFM'
  homepage 'https://github.com/Watson1978/QLMarkdownGFM'

  qlplugin 'QLMarkdownGFM.qlgenerator'
end