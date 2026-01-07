# Generated with JReleaser 1.3.0 at 2026-01-07T13:16:58.994804745Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.30.6/quarkus-cli-3.30.6.zip"
  version "3.30.6"
  sha256 "acdacec895999b26644c8ba5b068187c62b6c72c0ffcf3ecd9f26d3c7b86e306"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.30.6", output
  end
end
