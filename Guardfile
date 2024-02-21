# A sample Guardfile
# More info at https://github.com/guard/guard#readme

## Uncomment and set this to only include directories you want to watch
directories(%w[lib spec] \
              .select { |d| Dir.exist?(d) ? d : UI.warning("Directory #{d} does not exist") })

## Note: if you are using the `directories` clause above and you are not
## watching the project directory ('.'), then you will want to move
## the Guardfile to a watched dir and symlink it back, e.g.
#
#  $ mkdir config
#  $ mv Guardfile config/
#  $ ln -s config/Guardfile .
#
# and, you'll have to watch "config/Guardfile" instead of "Guardfile"
#
# guard :shell do
#   # Specify the files/directories to watch
#   watch(%r{^path/to/watched/files/.+\.(rb|html|css)$}) do |_matches|
#     # Define the action to take when files change
#     system("rake your:rake:task")
#   end
# end

watch(/.+\.rb$/) do |_matches|
  system("rake spec")
end
