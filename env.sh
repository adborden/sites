# Setup the environment for secrets
#     $ source ./env.sh
project_dir=$(pwd)

encfs "$project_dir/.secrets" "$project_dir/secrets"

source secrets/aws
