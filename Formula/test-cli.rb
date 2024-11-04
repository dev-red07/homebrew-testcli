class TestCli < Formula
    desc "Test CLI game"
    homepage "https://github.com/dev-red07/testcli"
    url "https://github.com/dev-red07/testcli/archive/refs/tags/v0.0.1.tar.gz"
    sha256 "c002f426ec08761791417df69d3c2c33743282d629201942b9726f2a8c6bc3f8"
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
  