# Generated with JReleaser 1.3.0 at 2025-04-09T14:34:01.355741106Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.21.2/quarkus-cli-3.21.2.zip"
  version "3.21.2"
  sha256 "4173eafec09e39ec16e3e957189886e01ab6dc3017197a9f608be3c64166a1fe"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.21.2", output
  end
end
