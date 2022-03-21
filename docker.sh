docker run --rm --privileged public.ecr.aws/zomato/multiarch/qemu-user-static:latest --reset -p yes
docker buildx rm builder
docker buildx create --name builder --driver docker-container --use
docker buildx inspect --bootstrap

docker buildx build --platform linux/amd64,linux/arm64 --push -t docker.oaplatform.org/oap-perl:%build.number% -f Dockerfile .
