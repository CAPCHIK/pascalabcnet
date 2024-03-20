FROM mono:6.12.0.182 as build
WORKDIR /pasabcnet
COPY . .
RUN sh ./_RebuildRelease.sh

FROM mono:6.12.0.182
COPY --from=build /pasabcnet/bin /pasabcnet