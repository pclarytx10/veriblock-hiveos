# VeriBlock Pow CUDA HiveOS Miner

Integration with official miner and HiveOS.



**Automatically creates unique instance for each GPU**
In custom miner Extra config arguments, define GPU IDs separated by commas:
-d 0,1,2,3 -bs 512

**Auto miner restart**
Use Hive's hashrate Watchdog to restart frozen miners

**Mining Stats**
- per GPU hashrate
- rig total hashrate
- accepted/rejected shares

**Tweak Remotely**
Manage stability by updating -bs or -tpb from your phone

***

NVIDIA
Miner name: veriblock
Installation url: https://github.com/rigamp/veriblock-hiveos/releases/download/v0.9.1/veriblock-0.9.1.tar.gz

NVIDIA miner is official miner https://github.com/VeriBlock/nodecore-pow-cuda-miner/releases/tag/v0.3.7

***

AMD
Miner name: veriblock_amd
Installation url: https://github.com/rigamp/veriblock-hiveos/releases/download/v0.9/veriblock_amd-0.6.tar.gz

AMD version uses monkins1010 AMD miner
https://github.com/monkins1010/nodecore-pow-AMD-cuda-miner/releases/tag/v2.0a



