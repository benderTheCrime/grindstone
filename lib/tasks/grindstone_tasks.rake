require 'fileutils'

namespace :grindstone do
  desc "Create Grindstone migrations"
  task :create_migrations do

    # Get the Grindstone dir
    spec = Gem::Specification.find_by_name 'grindstone'

    # Set the destination
    dest_dir = "#{Rails.root}/db/migrate"

    unless File.directory?(dest_dir)
      FileUtils.mkdir_p(dest_dir)
    end

    # Read the source
    Dir.glob("#{spec.gem_dir}/db/migrate/*.rb").each do |migration|
      filename = migration.split('/').last
      filepath = "#{dest_dir}/#{filename}"

      puts migration, filepath

      # Copy the file
      File.open(filepath, 'w')
      FileUtils::cp migration, filepath, :verbose => true
    end

    puts 'Grindstone: Copied Migrations'
  end
end