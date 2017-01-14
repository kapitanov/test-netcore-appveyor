FROM martinibanez/dotnet-docker:1.1.0-sdk-msbuild
COPY . /build
WORKDIR /build
VOLUME /build/artifacts
ENTRYPOINT ./build.sh