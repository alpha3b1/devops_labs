

- Create an ssh session with keep alive
ssh -i ssh_access.pem  -o ServerAliveInterval=60 ubuntu@ec2-34-220-158-84.us-west-2.compute.amazonaws.com