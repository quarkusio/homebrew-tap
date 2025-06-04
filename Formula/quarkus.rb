# Generated with JReleaser 1.3.0 at 2025-06-04T22:47:02.124541342Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.23.2/quarkus-cli-3.23.2.zip"
  version "3.23.2"
  sha256 "c094edb7519aecbe0cb480b1476017e60586621eaa5651cf32ee406546c39d1f"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.23.2", output
  end
end
