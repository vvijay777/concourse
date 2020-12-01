alb=$(cat properties.cfg | grep asg | cut -d'=' -f2)
asg=$(cat properties.cfg | grep asg | cut -d'=' -f2)
echo $asg
echo $alb
more asg.json
sed -i "/^[[:space:]]*\"url\"/ s/:.*/:\ \"\http:\/\/$alb\"/" asg.json
sed -i "/^[[:space:]]*\"asg_names\"/ s/:.*/:\ [\"$asg\"],/" asg.json
more asg.json
