# Generated with JReleaser 1.3.0 at 2025-08-29T13:36:25.632018623Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.26.1/quarkus-cli-3.26.1.zip"
  version "3.26.1"
  sha256 "aaaf1e4efec054f889e94d3101a1eab9686d1fc8fd34a0e6694317a2ea742c08"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.26.1", output
  end
end
