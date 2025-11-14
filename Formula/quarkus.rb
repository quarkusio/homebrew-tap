# Generated with JReleaser 1.3.0 at 2025-11-14T09:54:16.069025782Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.29.3/quarkus-cli-3.29.3.zip"
  version "3.29.3"
  sha256 "2266b808fc3da68d9e9e164440b01da151e4fe63e1529b1d2301031e9699b810"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.29.3", output
  end
end
