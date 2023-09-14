# Generated with JReleaser 1.3.0 at 2023-09-14T22:53:11.70132+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.3.3/quarkus-cli-3.3.3.zip"
  version "3.3.3"
  sha256 "2a5349a9275d2a7557f390b0aef2d426960d82686920767a684bcf72040ac9d7"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.3.3", output
  end
end
