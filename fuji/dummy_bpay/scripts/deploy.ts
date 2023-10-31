import { formatEther, parseEther } from "viem";
import { viem } from "hardhat";

async function main() {
  const maxSupply = parseEther("720000000");

  const bpay = await viem.deployContract("BPay", [maxSupply]);

  console.log("BPay deployed to:", bpay.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
