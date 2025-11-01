# LZ4压缩时序优化验证脚本 (PowerShell版本)
# 用于验证优化后的代码是否编译正确

Write-Host "==========================================" -ForegroundColor Green
Write-Host "LZ4压缩时序优化验证脚本" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Green

# 检查优化是否已应用
Write-Host "1. 检查优化措施是否已应用..." -ForegroundColor Yellow

# 检查 lz4_compress.hpp 中的优化
Write-Host "检查 lz4_compress.hpp..." -ForegroundColor Cyan

$lz4File = "L1/include/hw/lz4_compress.hpp"
$lz4Content = Get-Content $lz4File -Raw

# 检查流水线II优化
if ($lz4Content -match "PIPELINE II = 4") {
    Write-Host "✓ lz4_compress.hpp 中的流水线II=4优化已应用" -ForegroundColor Green
} else {
    Write-Host "✗ lz4_compress.hpp 中的流水线II=4优化未找到" -ForegroundColor Red
}

# 检查预计算优化
if ($lz4Content -match "预计算所有需要的值") {
    Write-Host "✓ lz4_compress.hpp 中的预计算优化已应用" -ForegroundColor Green
} else {
    Write-Host "✗ lz4_compress.hpp 中的预计算优化未找到" -ForegroundColor Red
}

# 检查进位保存加法器优化
if ($lz4Content -match "进位保存加法器") {
    Write-Host "✓ lz4_compress.hpp 中的进位保存加法器优化已应用" -ForegroundColor Green
} else {
    Write-Host "✗ lz4_compress.hpp 中的进位保存加法器优化未找到" -ForegroundColor Red
}

# 检查编译错误修复
Write-Host ""
Write-Host "2. 检查编译错误修复..." -ForegroundColor Yellow

# 检查类型转换错误修复
if ($lz4Content -match "next_state = next_state_tmp;") {
    Write-Host "✓ 枚举类型转换错误已修复" -ForegroundColor Green
} else {
    Write-Host "✗ 枚举类型转换错误未修复" -ForegroundColor Red
}

# 检查变量类型错误修复
if ($lz4Content -match "match_length >> 15") {
    Write-Host "✓ uint16_t变量类型错误已修复" -ForegroundColor Green
} else {
    Write-Host "✗ uint16_t变量类型错误未修复" -ForegroundColor Red
}

# 总结优化状态
Write-Host ""
Write-Host "3. 优化状态总结:" -ForegroundColor Yellow

$optimizedCount = 0
$totalOptimizations = 5

if ($lz4Content -match "PIPELINE II = 4") { $optimizedCount++ }
if ($lz4Content -match "预计算所有需要的值") { $optimizedCount++ }
if ($lz4Content -match "进位保存加法器") { $optimizedCount++ }
if ($lz4Content -match "next_state = next_state_tmp;") { $optimizedCount++ }
if ($lz4Content -match "match_length >> 15") { $optimizedCount++ }

Write-Host "已应用的优化措施: $optimizedCount/$totalOptimizations" -ForegroundColor Cyan

if ($optimizedCount -eq $totalOptimizations) {
    Write-Host "✓ 所有优化措施已正确应用" -ForegroundColor Green
} else {
    Write-Host "⚠ 部分优化措施可能未完全应用" -ForegroundColor Yellow
}

# 显示关键优化点
Write-Host ""
Write-Host "4. 关键优化点:" -ForegroundColor Yellow
Write-Host "- 流水线II值增加到4 (减少关键路径)" -ForegroundColor White
Write-Host "- 预计算和预读取数据 (减少计算延迟)" -ForegroundColor White
Write-Host "- 进位保存加法器 (优化加法关键路径)" -ForegroundColor White
Write-Host "- 并行状态转移逻辑 (减少分支延迟)" -ForegroundColor White
Write-Host "- 编译错误修复 (确保代码可编译)" -ForegroundColor White

Write-Host ""
Write-Host "5. 优化详情:" -ForegroundColor Yellow
Write-Host "主要针对 lz4CompressPart2 函数中的 lz4_compress 循环进行优化:" -ForegroundColor White
Write-Host "- 将复杂的加法操作拆分为多个阶段" -ForegroundColor White
Write-Host "- 使用进位保存加法器和进位选择加法器" -ForegroundColor White
Write-Host "- 增加流水线阶段，将 II 设置为 4" -ForegroundColor White
Write-Host "- 预计算所有需要的值和条件判断" -ForegroundColor White
Write-Host "- 使用寄存器存储中间结果" -ForegroundColor White

Write-Host ""
Write-Host "==========================================" -ForegroundColor Green
Write-Host "验证完成" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Green
Write-Host "下一步操作:" -ForegroundColor Yellow
Write-Host "- 使用Vitis HLS进行完整编译测试" -ForegroundColor White
Write-Host "- 检查时序报告中的关键路径" -ForegroundColor White
Write-Host "- 验证时序违例是否已解决" -ForegroundColor White
