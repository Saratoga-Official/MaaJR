# MaaJR

MaaJR，基于全新架构的 战舰少女R 小助手。图像技术 + 模拟控制，解放双手！

本项目由 **[MaaFramework](https://github.com/MaaXYZ/MaaFramework)** 强力驱动！

本项目自v2.0.0版本起采用 **[MFAWPF](https://github.com/SweetSmellFox/MFAWPF)** 作为gui界面，仅限win-x86_64用户可用

## 功能

1. 开始唤醒（打开游戏）

2. 自动远征

3. 自动战役

4. 自动炸鱼

5. 无消耗刷1-1鱼雷狗粮

6. 自定义地图练级

7. 自动领取任务奖励并泡澡

8. 不定期更新刷活动练级，出新活动可以找我催更

## 问题反馈或功能建议

如果使用中遇到bug或有其他功能建议可以提issue或者加入QQ群457094182

反馈问题请附上日志文件 debug/maa.log，谢谢！

## 下载及安装说明

下载地址：https://github.com/Saratoga-Official/MaaJR/releases

### Windows

- 对于绝大部分用户，请下载 MaaJR-win-x86_64-with-gui-vXXX.zip，解压后运行 MFAWPF.exe 即可

- 若确定自己的电脑是 arm 架构，请下载 MaaJR-win-aarch64-vXXX.zip，解压后运行 MaaPiCli.exe 即可

### macOS

- 若使用 Intel 处理器，请下载 MaaJR-macos-x86_64-vXXX.zip

- 若使用 M1, M2 等 arm 处理器，请下载 MaaJR-macos-aarch64-vXXX.zip

- 使用方式：
  
  ```bash
  chmod a+x MaaPiCli
  ./MaaPiCli
  ```

### Linux

~~用 Linux 的大佬应该不需要我教~~

## 使用前说明

在使用工具前完成以下工作：

* 确保游戏可以在模拟器上流畅运行，没有严重的卡顿和延迟

* 将模拟器的分辨率调整为 1600*900(推荐)

* 打开模拟器的ADB调试选项，关闭后台挂机时保活运行

* 完成所有游戏资源的下载

* 完成必须运行库的下载：
  [vc_redist](https://aka.ms/vs/17/release/vc_redist.x64.exe)
  [NET8](https://dotnet.microsoft.com/zh-cn/download/dotnet/thank-you/sdk-8.0.402-windows-x64-installer)

## MaaPiCli说明

* Select controller选安卓端

* Select ADB推荐选第一个自动检测

* Select Device中选你模拟器的adb

* Add task选择你想要运行的功能

* Select Action里选项的翻译如下

1. 切换adb
2. 切换资源（目前没用，请无视）
3. 增加任务
4. 移动任务顺序
5. 删除任务
6. 运行任务
7. 退出picli

## 功能说明

1. 自动远征：MaaJR会自动收取远征奖励并继续使用当前编队远征

2. 自动战役：MaaJR会根据你的选项设置打指定战役直到打完次数，需提前编队

3. 自动炸鱼：MaaJR会根据你的选项设置去炸鱼练级，需提前编队

4. 无消耗刷1-1鱼雷狗粮：MaaJR会根据你的选项设置去1-1无消耗刷鱼雷狗粮

5. 自定义地图练级：在你想刷的关卡地图名界面开始,MaaJR会根据你的选择设置刷该地图的第一个节点，需提前编队

6. 自动领取任务奖励并泡澡：在任务结束后完成一些收尾工作

7. 不定期更新刷活动练级，出新活动可以找我催更

## 声明

本软件免费开源，仅供学习交流使用。开发者团队拥有本项目的最终解释权。

本软件仅通过游戏提供的用户界面与游戏程序进行交互，不会以任何形式读取或修改游戏的文件或代码。

使用本软件产生的任何问题或后果与本软件及开发者团队无关。任何商家利用本软件提供代练等商业服务所产生的任何问题或后果，与本软件及开发者团队无关。

下载并使用本软件即表示您已阅读并同意上述声明。

## 鸣谢

首先感谢玛丽和MAA

感谢以下开发者对本项目作出的贡献:

<a href="https://github.com/Saratoga-Official/MaaJR/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=Saratoga-Official/MaaJR&max=1000" />
</a>

