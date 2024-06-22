install-base:
	python3 -m pip install --upgrade pip
	python3 -m pip install flit

install-data-elt: install-base
	cd ./autosink-data-elt && flit install --symlink && cd ..

install-data-preparation: install-base
	cd ./autosink-data-preparation && flit install --symlink && cd ..

install-data-validation: install-base
	cd ./autosink-data-validation && flit install --symlink && cd ..

install-model-evaluation: install-base
	cd ./autosink-model-evaluation && flit install --symlink && cd ..

install-model-training: install-base
	cd ./autosink-model-training && flit install --symlink && cd ..

install-model-validation: install-base
	cd ./autosink-model-validation && flit install --symlink && cd ..

install-sparse-to-dense: install-base
	cd ./sparse-to-dense && flit install --only-deps && cd ..

install: install-data-elt install-data-preparation install-data-validation install-model-evaluation install-model-training install-model-validation install-sparse-to-dense

publish-base:
	python3 -m pip install --upgrade pip
	python3 -m pip install flit

publish-data-elt: publish-base
	cd ./autosink-data-elt && make publish && cd ..

publish-data-preparation: publish-base
	cd ./autosink-data-preparation && make publish && cd ..

publish-data-validation: publish-base
	cd ./autosink-data-validation && make publish && cd ..

publish-model-evaluation: publish-base
	cd ./autosink-model-evaluation && make publish && cd ..

publish-model-training: publish-base
	cd ./autosink-model-training && make publish && cd ..

publish-model-validation: publish-base
	cd ./autosink-model-validation && make publish && cd ..

publish-sparse-to-dense: publish-base
	cd ./sparse-to-dense && make publish && cd ..

publish: publish-data-elt publish-data-preparation publish-data-validation publish-model-evaluation publish-model-training publish-model-validation publish-sparse-to-dense
