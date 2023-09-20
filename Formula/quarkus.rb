# Generated with JReleaser 1.3.0 at 2023-09-20T19:29:56.334633+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.4.1/quarkus-cli-3.4.1.zip"
  version "3.4.1"
  sha256 "e440364cd971eff89089b922b51940c98deb9bfd73d0f9d5a5d9411cf1937d86"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.4.1", output
  end
end
