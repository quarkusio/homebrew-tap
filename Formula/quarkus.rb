# Generated with JReleaser 1.3.0 at 2023-07-19T19:10:51.400757+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.2.1.Final/quarkus-cli-3.2.1.Final.zip"
  version "3.2.1.Final"
  sha256 "a6f88fb9a46b6efb8f75afc0ff527f8adff758444cf8c7488bd261d66b8ec5f9"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.2.1.Final", output
  end
end
