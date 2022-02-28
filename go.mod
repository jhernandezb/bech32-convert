go 1.17

module github.com/jhernandezb/bech32-convert

require github.com/cosmos/cosmos-sdk v0.45.1

require github.com/cosmos/btcutil v1.0.4 // indirect

replace (
	github.com/99designs/keyring => github.com/cosmos/keyring v1.1.7-0.20210622111912-ef00f8ac3d76
	github.com/CosmWasm/wasmvm => github.com/CosmWasm/wasmvm v1.0.0-beta6
	github.com/gin-gonic/gin => github.com/gin-gonic/gin v1.7.0
	github.com/gogo/protobuf => github.com/regen-network/protobuf v1.3.3-alpha.regen.1
	github.com/tecbot/gorocksdb => github.com/cosmos/gorocksdb v1.2.0
	github.com/tendermint/spm => github.com/public-awesome/spm v0.1.9-stargaze.0.20220218155531-af173fcd55c7
	google.golang.org/grpc => google.golang.org/grpc v1.33.2
)
