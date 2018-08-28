.PHONY: apply bootstrap plan

bootstrap:
	cd bootstrap && terraform init
	cd bootstrap && terraform apply

plan:
	terraform plan -out=plan.tfplan

apply: plan.tfplan
	terraform apply $<
