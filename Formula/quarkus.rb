# Generated with JReleaser 1.3.0 at 2025-12-10T15:26:36.576483409Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.30.3/quarkus-cli-3.30.3.zip"
  version "3.30.3"
  sha256 "18bd4207aa1359bea0a231316f276588c1f9ceb2cc17c69674681535ae99d012"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.30.3", output
  end
end
