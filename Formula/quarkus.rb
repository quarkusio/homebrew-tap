# Generated with JReleaser 1.3.0 at 2025-06-19T12:59:19.76180135Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.23.4/quarkus-cli-3.23.4.zip"
  version "3.23.4"
  sha256 "cc4fddeb350420e49148253657b1a2a4d9ac688c708aff6bf8572fff86df59ca"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.23.4", output
  end
end
