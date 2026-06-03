# Generated with JReleaser 1.3.0 at 2026-06-03T11:48:35.969893204Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.36.1/quarkus-cli-3.36.1.zip"
  version "3.36.1"
  sha256 "7d80743197fb8167fbcd237775e8c59a0a9e070ebddf323d36f92d75c5779212"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.36.1", output
  end
end
