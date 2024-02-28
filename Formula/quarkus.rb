# Generated with JReleaser 1.3.0 at 2024-02-28T15:53:45.955263453Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.8.1/quarkus-cli-3.8.1.zip"
  version "3.8.1"
  sha256 "73cb5b0f16ff00fd0b3f79301b621ae73f2333b277a8a4de37ecac8e37ea83ed"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.8.1", output
  end
end
