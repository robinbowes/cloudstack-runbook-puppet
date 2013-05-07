#!/bin/bash

# get dir contining this script
current_dir=$(readlink -f .)
site_script="$current_dir/manifests/site.pp"
module_dir="$current_dir/modules"
puppet apply "$site_script" --modulepath="$module_dir" --noop
