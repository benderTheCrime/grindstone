namespace :grindstone do
  desc "Create Grindstone migrations"
  task :create_migrations do

    # Get the Grindstone dir
    spec = Gem::Specification.find_by_name 'grindstone'

    # Set the destination
    dest_dir = "#{Rails.root}/db/migrate"

    # Read the source
    Dir.glob("#{spec.gem_dir}/db/migrate/*.rb").each do |migration|

      # Copy the file
      FileUtils::cp migration, dest_dir, :verbose => true

    end

    puts 'Grindstone: Copied Migrations'
  end
end