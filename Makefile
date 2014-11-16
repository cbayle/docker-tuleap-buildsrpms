build:
	docker build -t cbayle/docker-tuleap-buildsrpms:1.0 .

run:
	docker run --rm=true -t -i \
		-v $$(dirname $(CURDIR))/tuleap:/tuleap \
		-v $$(dirname $(CURDIR))/srpms:/srpms \
		cbayle/docker-tuleap-buildsrpms:1.0

runlibs:
	docker run --rm=true -t -i \
		-v $$(dirname $(CURDIR))/tuleap-centos-build:/tuleap \
		-v $$(dirname $(CURDIR))/srpms-libs:/srpms \
		cbayle/docker-tuleap-buildsrpms:1.0
