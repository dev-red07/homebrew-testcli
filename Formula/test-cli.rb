class TestCli < Formula
    desc "Test CLI game"
    homepage "https://github.com/dev-red07/testcli"
    url "https://github.com/dev-red07/testcli/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "58d41a0dd85ae9e12f1b5904c747dcd423a807cffd0074e31901f653b2053a96"
    license "MIT"
  
    depends_on "node"
  
    def install
       system "npm", "install", "-g", "."
       bin.install "index.js" => "test-cli"
    end
  
    # test do
    #   system "#{bin}/test-cli", "--version"
    # end
  end
  