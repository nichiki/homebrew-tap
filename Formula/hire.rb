class Hire < Formula
  include Language::Python::Virtualenv

  desc "CLI to orchestrate AI agents (Claude, Codex, Gemini)"
  homepage "https://github.com/nichiki/hire-ai"
  url "https://files.pythonhosted.org/packages/ca/f2/9a4745c6d74100f63096720f324f59d74f4c1250ef0e7e319bfe5138ae5e/hire_ai-0.1.0.tar.gz"
  sha256 "a808f810ae45b1493e3ab6a7b66d5f0b79a3cd50b3b851422f4d0f5682fb6c8d"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "hire", shell_output("#{bin}/hire --version")
  end
end
