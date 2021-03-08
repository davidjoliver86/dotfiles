
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

files=$(ls ~/.bashrc.d/*.sh 2>/dev/null)
for file in $files; do
  source $file
done
