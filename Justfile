set dotenv-load

deploy-testnet-contracts:
  #!/bin/bash
  set -eou pipefail
  cd fuji/dummy_bpay
  yarn hardhat run --network fuji scripts/deploy.ts
  cd ../..

mint-bpay address amount:
  #!/bin/bash
  set -eou pipefail
  cd fuji/dummy_bpay
  yarn hardhat mint --network fuji --addr {{address}} --amount {{amount}}
  cd ../..
