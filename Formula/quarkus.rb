# Generated with JReleaser 1.3.0 at 2025-03-12T16:24:55.349492939Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.19.3/quarkus-cli-3.19.3.zip"
  version "3.19.3"
  sha256 "2425828e4f46f717b5cceb1ba4619e59e9d2ba1cd39f8a436e942d66d3e76b51"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.19.3", output
  end
end
