# Generated with JReleaser 1.3.0 at 2023-12-13T07:46:27.180474Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.6.3/quarkus-cli-3.6.3.zip"
  version "3.6.3"
  sha256 "4b2e0185c276b80b3af9f0d7356044cc5a4e6c57f4d62b71809ec65e8adb8468"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.6.3", output
  end
end
