REGISTRY=frontend
REPO=portfolio
TIMESTAMP=tmp-$(shell date +%s )

create:
	@eval $$(minikube docker-env) ;\
	docker build -t $(REGISTRY)/$(REPO) .
	kubectl apply -f kubernetes/

update:
	@eval $$(minikube docker-env) ;\
	docker build -t $(REGISTRY)/$(REPO):$(TIMESTAMP) .
	kubectl set image -f ./kubernetes/deployment.yml portfolio-frontend=$(REGISTRY)/$(REPO):$(TIMESTAMP)

foo:
	@eval $$(minikube docker-env) ;\
	docker images

delete:
	kubectl delete -f kubernetes/
