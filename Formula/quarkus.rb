# Generated with JReleaser 1.3.0 at 2024-11-06T15:51:21.595886019Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.16.2/quarkus-cli-3.16.2.zip"
  version "3.16.2"
  sha256 "56f31d2bf2a8a71cb6f20f2bee6f03f54071a96cd95d16181ddbc4095037310b"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.16.2", output
  end
end
