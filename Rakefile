EXCLUDED_FILES = %w[
  atom
  bin
  Brewfile
  extras
  private
  scripts
  Rakefile
  vendor
]

task :install do
  home = ENV["HOME"]

  Dir["*"].each do |file|
    next if EXCLUDED_FILES.include?(file)

    ln_s "#{Dir.pwd}/#{file}", "#{home}/.#{file}", force: true
  end

  ln_s "#{Dir.pwd}/atom/config.cson", "#{home}/.atom/config.cson", force: true
  ln_s "#{Dir.pwd}/atom/keymap.cson", "#{home}/.atom/keymap.cson", force: true
  ln_s "#{Dir.pwd}/atom/styles.less", "#{home}/.atom/styles.less", force: true

  `brew bundle`
  `scripts/install_ruby.sh`
  `scripts/install_gems.sh`
  `scripts/install_node.sh`
  `scripts/install_packages.sh`
  `scripts/configure_macos.sh`
end

task default: :install
