# Generated with JReleaser 1.3.0 at 2023-01-19T17:37:16.71859+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.13.7.Final/quarkus-cli-2.13.7.Final.zip"
  version "2.13.7.Final"
  sha256 "ca50bc9f4ad980b5216682f7de72d1236e26e1084e16c0bc7deb09ff02e93017"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.13.7.Final", output
  end
end
