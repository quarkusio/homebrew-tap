# Generated with JReleaser 1.3.0 at 2025-02-26T15:32:51.349135147Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.19.1/quarkus-cli-3.19.1.zip"
  version "3.19.1"
  sha256 "d2bc7fc3e256ffc30c7ee268d8adcb83cae106c4a542d08ec74b5c512cb1a344"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.19.1", output
  end
end
