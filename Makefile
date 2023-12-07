gazelle:
	bazel run --lockfile_mode=update //:gazelle

update-module-lock:
	bazel mod deps --lockfile_mode=update

python-deps:
	bazel run //:requirements.update
	bazel run //:gazelle_python.update
	$(MAKE) gazelle

python-all: python-deps fix

go-tidy:
	bazel run --lockfile_mode=off @go_sdk//:bin/go -- mod tidy

go-deps: go-tidy gazelle
