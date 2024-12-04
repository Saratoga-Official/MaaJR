# MaaJR使用说明

---

## 下载及安装说明

下载地址：https://github.com/Saratoga-Official/MaaJR/releases

### Windows

- 对于绝大部分用户，请下载 MaaJR-win-x86_64-vXXX.zip，解压后运行 MaaJR.exe 即可

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

---

## 使用前说明

在使用工具前完成以下工作：

* 确保游戏可以在模拟器上流畅运行，没有严重的卡顿和延迟

* 将模拟器的分辨率调整为 16∶9 

* 打开模拟器的ADB调试选项，关闭后台挂机时保活运行

* 完成所有游戏资源的下载

* 完成必须运行库的下载：
  [vc_redist](https://aka.ms/vs/17/release/vc_redist.x64.exe)
  [NET8](https://dotnet.microsoft.com/zh-cn/download/dotnet/8.0)

---

## 功能说明

### ①开始前任务：

* 用于打开游戏，领取登录奖励等

* 请将本任务放在所有任务之前

### ②自动远征

* 不开启远征等待模式就是自动收发一次远征

* 开启远征等待模式会在程序关闭前无限等待收发远征

### ③自动战役

* 需提前编好队，再开始

* 不开启战役打完次数将按照重复次数来执行，反之将重复打至0次

### ④自动演习

* 目前演习刷新策略暂定第一个官方演习队不刷新直接打，其余按所选策略刷新

* 需提前编好队，再开始

### ⑤自动出征

* 仅支持常规图1-9章的关卡

* 需提前编好队，再开始

* 自动导航章节/关卡，选择你要打的章节和关卡号可以自动导航到你指定的关卡，选择当前/上次就是不导航

* 门口SL目标，选择后出门点检测到敌方目标舰种就会SL，如果索敌不了无法SL

* 战斗点位，设置几点就打到几点

* 自动拆船，确保船舱想保留的船均锁好才可使用

### ⑥无消耗刷1-1（远古的黑暗炼钢）

* 会自动编队编入最近获得的船，不能和其他编队混用

* 确保船舱想保留的船均锁好才可使用自动拆船

### ⑦自动决战E6

* 使用前确认副官已开启奇尔沙治，选船配置中有且仅有一艘2-3费中型船和4费鱼

* 剩下的位置大型船全选6费,中型船有5费选5费，5费不够用4费填满，小型船全选改造鱼

* 如果不符合要求，手动选好后进去点撤退退出来即可开始，之后只要不改配置将一直沿用上次选船配置

* 第一关开局舰船1和2设置后将按照设置刷第一关开局舰船，如果指定6费鱼刷了很久没出就换成默认或者指定四费鱼，注意不要12选同一个船，会出逻辑bug

* 第二关开局舰船设置后如果第一关没招到该舰船将在第二关开局刷取

* 决战中将自动使用快速修理，请备好足够的桶

* 船舱满将自动停止决战，请预留充足空间

### ⑧结束前任务

* 用来修船恢复，领取任务奖励

* 请将此任务放到所有任务或者战斗任务之后

---

## MaaPiCli使用说明

使用win-x86_64的不用看这个

### ①
启动后会出现:
```
Welcome to use Maa Project Interface CLI!

Version: v0.0.1

### Select ADB ###

        1. Auto detect
        2. Manual input

Please input [1-2]:
```
分别代表：
1. 自动检测，如果在同一台机器上开启着模拟器，可以尝试选择这个。

```
### Select ADB ###

        1. Auto detect
        2. Manual input

Please input [1-2]: 1

Finding device...

## Select Device ##

        1. MuMuPlayer12
                H:/Program Files/Netease/MuMuPlayer-12.0/shell/adb.exe
                127.0.0.1:16672

Please input [1-1]: 1
```
选择 1 后会像上面这样，列出若干个模拟器实例，之后选择你需要进行操控的即可。

2. 手动输入，目前手动输入对于"含空格的路径"有问题，请参考下面的说明手动修改 `config/maa_pi_config.json`，如果没有则新建，修改完成后重启 `MaaPiCli`。

```
{
    "controller": {
        "adb_path": "H:\\Program Files\\Netease\\MuMuPlayer-12.0\\shell\\adb.exe",
        "address": "127.0.0.1:16672",
        "name": "ADB 默认方式"
    },
    "resource": "XXXX",
    "task": [
        {
            "name": "XXXX",
            "option": [
            ]
        }
    ]
}
```
其中 `"adb_path"` 部分是你的adb的路径，一般你可以在你的MuMu等模拟器的安装路径下，找到 `adb.exe`。注意如果路径里面有`\`，需要替换成 `\\'` ，就像上面那样。

`address` 是模拟器实例的 ADB 端口信息，你可以从你的模拟器上获取，获取方式相关可以参考：[MAA的文档](https://maa.plus/docs/%E7%94%A8%E6%88%B7%E6%89%8B%E5%86%8C/%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98.html#%E7%A1%AE%E8%AE%A4-adb-%E5%8F%8A%E8%BF%9E%E6%8E%A5%E5%9C%B0%E5%9D%80%E6%AD%A3%E7%A1%AE)。

### ②
在初次启动后，会让你输入启动的任务：
```
### Add task ###

        1. XXXX
        2. XXXX
        .......

Please input [1-X]:
```
选择你要执行的任务即可。

### ③

之后会反复出现：
```
Tasks:

<这里会列出你已经增加，等待执行的任务>

### Select action ###

        1. Switch controller
        2. Switch resource
        3. Add task
        4. Move task
        5. Delete task
        6. Run tasks
```
其中分别代表：
1. 调整控制器（也就是adb地址等）
2. 调整资源（不用管，目前只有一个）
3. 新增任务，像②中那样
4. 移动任务
5. 删除任务
6. 开始执行任务，在这之后就会自动开始操控。

如果你认为这种方式过于繁琐，也可以直接修改 `config/maa_pi_config.json`。