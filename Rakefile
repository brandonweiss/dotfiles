require "pathname"

task :install do
  Pathname.glob("atom/*").each do |file|
    symlink "#{Dir.pwd}/#{file}", "#{Dir.home}/.atom/#{file.basename}", force: true
  end

  Pathname.glob("home/*").each do |file|
    symlink "#{Dir.pwd}/#{file}", "#{Dir.home}/.#{file.basename}", force: true
  end

  system("sudo xcodebuild -license accept")
  system("brew upgrade")
  system("brew bundle")
  system("scripts/install_ruby.sh")
  system("scripts/install_gems.sh")
  system("scripts/install_node.sh")
  system("scripts/install_packages.sh")
  system("scripts/install_fonts.sh")
  system("scripts/configure_macos.sh")
end

task default: :install
