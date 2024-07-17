# Generated with JReleaser 1.3.0 at 2024-07-17T13:58:44.319796737Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.12.3/quarkus-cli-3.12.3.zip"
  version "3.12.3"
  sha256 "41103dbfe39ab5559509351da05e4828d827df1ca9afd8f60f60b3c81cfb4330"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.12.3", output
  end
end
