SHELL := /bin/bash
VAR_DIR = "variables"
TERRAFORM_APPLY = "terraform apply -auto-approve -var-file="
TERRAFORM_DESTROY = "terraform destroy -auto-approve -var-file="


terraform-init:
	@terraform init

jenkins-apply:
	@"${TERRAFORM_APPLY}${VAR_DIR}"/jenkins.tfvars

jenkins-destroy:
	@"${TERRAFORM_DESTROY}${VAR_DIR}"/jenkins.tfvars

python-http-server-apply:
	@"${TERRAFORM_APPLY}${VAR_DIR}"/python-http-server.tfvars

python-http-server-destroy:
	@"${TERRAFORM_DESTROY}${VAR_DIR}"/python-http-server.tfvars

go-http-server-apply:
	@"${TERRAFORM_APPLY}${VAR_DIR}"/go-http-server.tfvars

go-http-server-destroy:
	@"${TERRAFORM_DESTROY}${VAR_DIR}"/go-http-server.tfvars

.PHONY = terraform-init jenkins-apply jenkins-destroy python-http-server-apply python-http-server-destroy go-http-server-apply go-http-server-destroy
