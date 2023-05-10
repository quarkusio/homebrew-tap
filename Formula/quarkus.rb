# Generated with JReleaser 1.3.0 at 2023-05-10T17:07:48.34383+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.0.3.Final/quarkus-cli-3.0.3.Final.zip"
  version "3.0.3.Final"
  sha256 "365afaa9b8699e33725c2e395a6e04922356d99cf636d6792e62db33a4e53e57"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.0.3.Final", output
  end
end
