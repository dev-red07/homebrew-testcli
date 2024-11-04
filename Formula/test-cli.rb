class TestCli < Formula
    desc "Test CLI game"
    homepage "https://github.com/dev-red07/testcli"
    url "https://github.com/dev-red07/testcli/archive/refs/tags/V0.0.2.tar.gz"
    sha256 "5497ba256fb24122c636bc68b6f3c96059df13f143f508f7df855b7e1b196743"
    license "MIT"
  
    depends_on "node"
  
    def install
       system "npm", "install"
       bin.install "index.js" => "test-cli"
    end
  
    test do
      system "#{bin}/test-cli", "--version"
    end
  end
  