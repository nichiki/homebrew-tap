class HireAi < Formula
  include Language::Python::Virtualenv

  desc "CLI to orchestrate AI agents (Claude, Codex, Gemini, Grok)"
  homepage "https://github.com/nichiki/hire-ai"
  url "https://files.pythonhosted.org/packages/d1/d6/828ff46596f5dfe87ffaea7bb6406c079e3de4fa86af2764b7b71f19091a/hire_ai-0.1.7.tar.gz"
  sha256 "850fa27c0d5df83b0d2b33e1c8082940306639c449880b09cd2e0452a1c272c7"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "hire", shell_output("#{bin}/hire --version")
  end
end
