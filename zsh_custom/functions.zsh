function set-aws-keys() {
  local aws_profile=$1
  profile_data=$(cat ~/.aws/credentials | grep "\[$aws_profile\]" -A4)
  if [ $? -eq 0 ]; then
    AWS_ACCESS_KEY_ID="$(echo $profile_data | grep aws_access_key_id | cut -f2 -d'=' | tr -d ' ')"
    AWS_SECRET_ACCESS_KEY="$(echo $profile_data | grep aws_secret_access_key | cut -f2 -d'=' | tr -d ' ')"
    export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
    export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
    export AWS_PROFILE=$1
  else
    unset AWS_ACCESS_KEY_ID
    unset AWS_SECRET_ACCESS_KEY
    unset AWS_PROFILE
    echo "Invalid profile"
  fi
}

#function kops-kubecfg() {
#  set-aws-keys $1
#  export KOPS_STATE_STORE="s3://foo-kops-state-$1"
#  kops export kubecfg --name aws-01.k8s.$1.foo-domain.com
#}
