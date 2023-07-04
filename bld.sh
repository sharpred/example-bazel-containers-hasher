bazel build --cpu k8 //cmd/api:tarball
docker load --input $(bazel cquery --cpu=k8 --output=files //cmd/api:tarball)
docker run --name hasher -p8000:8000 --rm rhno.dev/hasher:latest