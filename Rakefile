require "pathname"

task :install do
  Pathname.glob("atom/*").each do |file|
    symlink "#{Dir.pwd}/#{file}", "#{Dir.home}/.atom/#{file.basename}", force: true
  end

  Pathname.glob("home/*").each do |file|
    symlink "#{Dir.pwd}/#{file}", "#{Dir.home}/.#{file.basename}", force: true
  end

  `brew bundle`
  `scripts/install_ruby.sh`
  `scripts/install_gems.sh`
  `scripts/install_node.sh`
  `scripts/install_packages.sh`
  `scripts/configure_macos.sh`
end

task default: :install
