# android_kernel_oneplus_msm8998

Automated GitHub Actions cloud compilation for OnePlus 5T (`dumpling`) and OnePlus 5 (`cheeseburger`) with integrated **KernelSU-Next**, **SUSFS (susfs4ksu)**, **Meta OverlayFS**, and **Gaming & Daily Performance Optimizations**.

* **Author / Maintainer:** [@ichirokazuki](https://github.com/ichirokazuki)
* **Target Device:** OnePlus 5T (`dumpling`) / OnePlus 5 (`cheeseburger`)
* **Platform:** Qualcomm Snapdragon 835 (`MSM8998`)

---

## ⚡ Integrated Features

1. **KernelSU-Next**: Integrated directly with Kprobes enabled.
2. **SUSFS (susfs4ksu)**: Full kernel-level root hiding and mount namespace spoofing.
3. **Meta OverlayFS**: Full `CONFIG_OVERLAY_FS` with metacopy & redirect directory support for Magic Mount and module compatibility.
4. **Gaming & Daily Performance Optimizations**:
   * **BBR TCP Congestion Control**: (`CONFIG_TCP_CONG_BBR=y`) for reduced latency and packet loss in online gaming.
   * **300Hz Timer (`CONFIG_HZ_300`)**: Responsive UI and frame pacing.
   * **ZRAM & LZ4/ZSTD**: Optimized multitasking and memory retention.
   * **Debug Overhead Stripping**: Cleaned lockdep/tracing for steady framerates and lower battery drain.
5. **Pure / Original Naming**: Kept standard without custom branding (`LOCALVERSION=""`).

---

## 🚀 Quick Setup & Build Instructions

### 1. Create the GitHub Repository
1. Go to [github.com/new](https://github.com/new).
2. Set the **Repository name** to: `android_kernel_oneplus_msm8998`
3. Choose **Public** (recommended for free, unlimited GitHub Actions runner minutes).
4. Click **Create repository**.

### 2. Push this Workspace to GitHub
Open PowerShell in this directory (`C:\Users\indra\.gemini\antigravity-ide\scratch\android_kernel_oneplus_msm8998`):

```powershell
git add .
git commit -m "Fix YAML syntax and update workflow"
git push -u origin main
```

---

### 3. Run the Build (1-Click)
1. Go to your repository on GitHub: [https://github.com/ichirokazuki/android_kernel_oneplus_msm8998](https://github.com/ichirokazuki/android_kernel_oneplus_msm8998)
2. Click the **Actions** tab.
3. In the left sidebar, click **"Build OnePlus 5T (dumpling) Kernel - KernelSU Next + SUSFS + Meta OverlayFS"**.
4. Click **Run workflow** -> green **Run workflow** button.
5. Wait for the compilation to finish (~5–10 minutes).
6. Download your flashable `kernel-dumpling-*.zip` from the **Artifacts** section at the bottom of the completed build page.

---

### 4. Flashing
1. Transfer the `.zip` to your phone or USB OTG.
2. Reboot to **TWRP** or **OrangeFox Recovery**.
3. Flash `kernel-dumpling-*.zip`.
4. Reboot to system.
5. Install the [KernelSU-Next Manager APK](https://github.com/KernelSU-Next/KernelSU-Next/releases).
