# Generated with JReleaser 1.3.0 at 2024-08-20T14:40:59.613911449Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.13.3/quarkus-cli-3.13.3.zip"
  version "3.13.3"
  sha256 "d36b953543e644d77adde2df27992de957dc750b069916f7e8090f241adc5bfc"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.13.3", output
  end
end
