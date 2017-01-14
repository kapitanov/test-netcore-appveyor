FROM martinibanez/dotnet-docker:1.1.0-sdk-msbuild
COPY . /build
RUN chmod +x /build/build.sh 
WORKDIR /build
VOLUME /build/artifacts
ENTRYPOINT ./build.sh