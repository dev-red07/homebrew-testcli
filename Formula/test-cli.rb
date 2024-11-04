class TestCli < Formula
    desc "Test CLI game"
    homepage "https://github.com/dev-red07/testcli"
    url "https://github.com/dev-red07/testcli/archive/refs/tags/V0.0.3.tar.gz"
    sha256 "baeb7567cfdada4ca442c6bec3864170a94aa26dfd6573a5905d21f31b1fb818"
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
  