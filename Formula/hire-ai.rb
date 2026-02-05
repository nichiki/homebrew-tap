class HireAi < Formula
  include Language::Python::Virtualenv

  desc "CLI to orchestrate AI agents (Claude, Codex, Gemini)"
  homepage "https://github.com/nichiki/hire-ai"
  url "https://files.pythonhosted.org/packages/8a/d1/fe16e808e788afd46b3f33b3d2ace5d82e5e8b6bdb9ff857c2a78686f555/hire_ai-0.1.6.tar.gz"
  sha256 "8c86ef4af4824d4195ce66ca7296b4e1848b84c169186575b094b05f8a5445a2"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "hire", shell_output("#{bin}/hire --version")
  end
end
