#!/bin/bash

PROJECT_ROOT="/workspaces/flutter_local_grpc_server"
PROTO_ROOT="$PROJECT_ROOT/proto"

protoc \
    -I "$PROTO_ROOT" \
    "$PROTO_ROOT/counter.proto" \
    --dart_out="grpc:$PROJECT_ROOT/lib/generated"
