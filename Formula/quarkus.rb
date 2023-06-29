# Generated with JReleaser 1.3.0 at 2023-06-29T09:43:24.829526+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.1.3.Final/quarkus-cli-3.1.3.Final.zip"
  version "3.1.3.Final"
  sha256 "989434df62b6ce105347bddef16cf229c9c9d4b4eb0ccbf1b6a9781baa4b04c1"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.1.3.Final", output
  end
end
