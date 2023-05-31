# Generated with JReleaser 1.3.0 at 2023-05-31T14:12:47.053906+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.1.0.Final/quarkus-cli-3.1.0.Final.zip"
  version "3.1.0.Final"
  sha256 "be82f6432137afc6e17cd53a8b3e145dacca9797dcd5fcd3bb30e82ecc53fb78"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.1.0.Final", output
  end
end
