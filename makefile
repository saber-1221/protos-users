.PHONY: proto proto-ps

proto:
	protoc --go_out=. --go_opt=paths=source_relative \
	       --go-grpc_out=. --go-grpc_opt=paths=source_relative \
	       protos/sso/sso.proto

proto-ps:
	pwsh -File proto.ps1