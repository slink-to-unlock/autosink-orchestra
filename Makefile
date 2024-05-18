install-base:
	python3 -m pip install --upgrade pip
	python3 -m pip install flit

install-data-extraction: install-base
	cd ./autosink-data-extraction && flit install --symlink

install-data-preparation: install-base
	cd ./autosink-data-preparation && flit install --symlink

install-data-validation: install-base
	cd ./autosink-data-validation && flit install --symlink

install-model-evaluation: install-base
	cd ./autosink-model-evaluation && flit install --symlink

install-model-training: install-base
	cd ./autosink-model-training && flit install --symlink

install-model-validation: install-base
	cd ./autosink-model-validation && flit install --symlink

install: install-data-extraction install-data-preparation install-data-validation install-model-evaluation install-model-training install-model-validation