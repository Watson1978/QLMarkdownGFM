cask 'qlmarkdown-gfm' do
  version '1.3.1'
  sha256 '0095f1eeeb2459cb329af742ba40aaf2cd6a781db663461a6b5038779407facb'

  url "https://github.com/Watson1978/QLMarkdownGFM/releases/download/v#{version}/QLMarkdownGFM.qlgenerator.zip"
  appcast 'https://github.com/Watson1978/QLMarkdownGFM/releases.atom',
          checkpoint: '204c4529f1028cfa06d292641c30b76cb5cb8e9102028d9ced7084db18247a03'
  name 'QLMarkdownGFM'
  homepage 'https://github.com/Watson1978/QLMarkdownGFM'

  qlplugin 'QLMarkdownGFM.qlgenerator'
end
