#!/bin/bash

# install chefdk
curl -L https://omnitruck.chef.io/install.sh | bash

# clone cokkbooks
git clone ${COOKBOOK_GIT} chef

# configure!
pushd chef
chef-solo -c solo.rb -j wordpress.json
popd
rm -rf chef

# start supervisord
/usr/bin/supervisord
