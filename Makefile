.PHONY: apply bootstrap plan

bootstrap:
	cd bootstrap && terraform init
	cd bootstrap && terraform apply

clean:
	rm plan.tfplan

plan:
	terraform plan -out=plan.tfplan

apply: plan.tfplan
	terraform apply $<
