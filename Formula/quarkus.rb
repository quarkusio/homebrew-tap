# Generated with JReleaser 1.3.0 at 2025-09-10T05:14:12.509880177Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.26.3/quarkus-cli-3.26.3.zip"
  version "3.26.3"
  sha256 "0f72dd80bc72e472c0191001338077fbe6a52dd0f790b5797f17efa139a7b57f"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.26.3", output
  end
end
