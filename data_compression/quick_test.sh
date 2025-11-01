#!/bin/bash

# LZ4压缩时序优化快速验证脚本
# 快速检查优化是否已正确应用

echo "=========================================="
echo "LZ4压缩时序优化快速验证"
echo "=========================================="

# 检查优化是否已应用
echo "1. 检查优化措施是否已应用..."

# 检查 lz_optional.hpp 中的优化
echo "检查 lz_optional.hpp..."
if grep -q "PIPELINE II = 2" L1/include/hw/lz_optional.hpp; then
    echo "✓ lz_optional.hpp 中的流水线II优化已应用"
else
    echo "✗ lz_optional.hpp 中的流水线II优化未找到"
fi

if grep -q "预计算条件判断" L1/include/hw/lz_optional.hpp; then
    echo "✓ lz_optional.hpp 中的预计算优化已应用"
else
    echo "✗ lz_optional.hpp 中的预计算优化未找到"
fi

# 检查 lz4_compress.hpp 中的优化
echo ""
echo "检查 lz4_compress.hpp..."
if grep -q "PIPELINE II = 3" L1/include/hw/lz4_compress.hpp; then
    echo "✓ lz4_compress.hpp 中的流水线II优化已应用"
else
    echo "✗ lz4_compress.hpp 中的流水线II优化未找到"
fi

if grep -q "预读取和预计算" L1/include/hw/lz4_compress.hpp; then
    echo "✓ lz4_compress.hpp 中的预读取优化已应用"
else
    echo "✗ lz4_compress.hpp 中的预读取优化未找到"
fi

# 检查 lz_compress.hpp 中的优化
echo ""
echo "检查 lz_compress.hpp..."
if grep -q "PIPELINE II = 2" L1/include/hw/lz_compress.hpp; then
    echo "✓ lz_compress.hpp 中的流水线II优化已应用"
else
    echo "✗ lz_compress.hpp 中的流水线II优化未找到"
fi

if grep -q "优化哈希计算" L1/include/hw/lz_compress.hpp; then
    echo "✓ lz_compress.hpp 中的哈希优化已应用"
else
    echo "✗ lz_compress.hpp 中的哈希优化未找到"
fi

# 总结优化状态
echo ""
echo "2. 优化状态总结:"
OPTIMIZED_COUNT=$((
    $(grep -c "PIPELINE II = [23]" L1/include/hw/lz_optional.hpp L1/include/hw/lz4_compress.hpp L1/include/hw/lz_compress.hpp 2>/dev/null) +
    $(grep -c "预计算" L1/include/hw/lz_optional.hpp L1/include/hw/lz4_compress.hpp L1/include/hw/lz_compress.hpp 2>/dev/null) +
    $(grep -c "优化哈希" L1/include/hw/lz_compress.hpp 2>/dev/null)
))

TOTAL_OPTIMIZATIONS=6

echo "已应用的优化措施: $OPTIMIZED_COUNT/$TOTAL_OPTIMIZATIONS"

if [ $OPTIMIZED_COUNT -eq $TOTAL_OPTIMIZATIONS ]; then
    echo "✓ 所有优化措施已正确应用"
else
    echo "⚠ 部分优化措施可能未完全应用"
fi

# 显示关键优化点
echo ""
echo "3. 关键优化点:"
echo "- 流水线II值增加 (减少关键路径)"
echo "- 预计算和预读取 (减少计算延迟)" 
echo "- 条件判断优化 (减少分支)"
echo "- 哈希计算简化 (减少计算复杂度)"
echo "- 寄存器重定时 (改善时序)"
echo "- 并行预计算 (提高效率)"

echo ""
echo "4. 下一步操作:"
echo "运行完整测试: ./test_optimization.sh"
echo "查看优化详情: cat OPTIMIZATION_SUMMARY.md"
echo "重新编译验证: vitis-run --mode hls --csim --config [配置文件]"

echo ""
echo "=========================================="
echo "快速验证完成"
echo "=========================================="
