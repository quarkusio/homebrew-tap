# Generated with JReleaser 1.1.0 at 2022-10-06T10:32:27.778435+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.13.1.Final/quarkus-cli-2.13.1.Final.zip"
  version "2.13.1.Final"
  sha256 "6f35c4afb843661bf2e6fb9729cf86924dc558160360a90363e8b19670a0a041"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.13.1.Final", output
  end
end
