#!/bin/bash

# Template generator for knowledge base pages
# This script creates placeholder MDX files for all knowledge base sections

create_page() {
    local filepath=$1
    local title=$2
    local description=$3
    local keywords=$4
    local sections=$5
    
    # Only create if file doesn't exist
    if [ ! -f "$filepath" ]; then
        cat > "$filepath" << EOF
---
title: ${title}
description: ${description}
keywords: ${keywords}
---

# ${title}

${description}

## 概述

[待补充：本节内容概述]

${sections}

## 核心概念

[待补充：核心概念说明]

## 实践应用

[待补充：实际应用案例]

## 常见问题

### 问题1：[待补充]
[待补充：答案]

### 问题2：[待补充]
[待补充：答案]

### 问题3：[待补充]
[待补充：答案]

## 总结

[待补充：本节要点总结]

## 延伸阅读

- [待补充：相关资源链接]
- [待补充：推荐书籍或文章]
EOF
        echo "Created: $filepath"
    else
        echo "Skipped (exists): $filepath"
    fi
}

# Create directories if they don't exist
mkdir -p zh/knowledge/{market-trading-101,fundamentals,charts,trends,patterns,volume,moving-averages,oscillators,risk-management,trading-system,elliott-wave}

echo "=== Creating Market Trading 101 Pages ==="
# Market Trading 101 - market-types already exists, skipped
# Market Trading 101 - basic-terms already exists, skipped
# Market Trading 101 - trading-hours already exists, skipped
create_page "zh/knowledge/market-trading-101/market-participants.mdx" \
    "市场参与者类型" \
    "了解不同类型的市场参与者：散户、机构、做市商等的特点和行为模式" \
    "市场参与者, 散户投资者, 机构投资者, 做市商, 量化基金" \
    "## 参与者分类

### 散户投资者
[待补充：特点和行为模式]

### 机构投资者
[待补充：特点和行为模式]

### 做市商
[待补充：角色和功能]

### 量化基金
[待补充：策略和影响]"

echo "=== Creating Fundamentals Pages ==="
create_page "zh/knowledge/fundamentals/macro-indicators.mdx" \
    "宏观经济指标" \
    "解读关键宏观经济指标：GDP、CPI、失业率等对市场的影响" \
    "宏观经济, GDP, CPI, 通货膨胀, 失业率, 利率" \
    "## 主要经济指标

### GDP（国内生产总值）
[待补充：定义和影响]

### CPI（消费者物价指数）
[待补充：定义和影响]

### 失业率
[待补充：定义和影响]

### 利率决议
[待补充：央行政策影响]"

create_page "zh/knowledge/fundamentals/industry-analysis.mdx" \
    "行业分析方法" \
    "掌握行业分析的框架和方法，评估行业前景和竞争格局" \
    "行业分析, 产业周期, 竞争格局, 波特五力, SWOT分析" \
    "## 分析框架

### 产业生命周期
[待补充：各阶段特征]

### 波特五力模型
[待补充：五力分析]

### SWOT分析
[待补充：优劣势机会威胁]"

create_page "zh/knowledge/fundamentals/financial-statements.mdx" \
    "如何解读财务报表" \
    "学习解读三大财务报表：资产负债表、利润表、现金流量表" \
    "财务报表, 资产负债表, 利润表, 现金流量表, 财务分析" \
    "## 三大报表

### 资产负债表
[待补充：结构和关键指标]

### 利润表
[待补充：结构和关键指标]

### 现金流量表
[待补充：结构和关键指标]"

create_page "zh/knowledge/fundamentals/valuation-methods.mdx" \
    "公司估值方法" \
    "掌握常用估值方法：PE、PB、DCF等的计算和应用" \
    "估值方法, PE, PB, DCF, 市盈率, 市净率, 现金流折现" \
    "## 相对估值法

### PE（市盈率）
[待补充：计算和应用]

### PB（市净率）
[待补充：计算和应用]

### PS（市销率）
[待补充：计算和应用]

## 绝对估值法

### DCF（现金流折现）
[待补充：模型和计算]"

echo "=== Creating Charts Pages ==="
create_page "zh/knowledge/charts/chart-types.mdx" \
    "图表常见类型" \
    "了解不同类型的价格图表：线图、柱状图、蜡烛图等" \
    "图表类型, 线图, 柱状图, 蜡烛图, 点数图" \
    "## 图表类型

### 线图
[待补充：特点和用途]

### 柱状图
[待补充：特点和用途]

### 蜡烛图
[待补充：特点和用途]

### 点数图
[待补充：特点和用途]"

create_page "zh/knowledge/charts/candlestick.mdx" \
    "蜡烛图详解" \
    "深入理解蜡烛图的构成、形态和交易信号" \
    "蜡烛图, K线, 十字星, 锤子线, 吞没形态" \
    "## 蜡烛图基础

### 构成要素
[待补充：开高低收]

### 单根K线形态
[待补充：各种形态]

### 组合形态
[待补充：多根K线组合]"

create_page "zh/knowledge/charts/timeframes.mdx" \
    "日线图、周线图与月线图" \
    "理解不同时间框架的应用，掌握多时间框架分析方法" \
    "日线图, 周线图, 月线图, 时间框架, 多周期分析" \
    "## 时间框架选择

### 日线图
[待补充：特点和应用]

### 周线图
[待补充：特点和应用]

### 月线图
[待补充：特点和应用]

## 日线图 × 周线图综合分析

### 多周期共振
[待补充：分析方法]

### 时间框架冲突
[待补充：处理方法]"

echo "=== Creating Trends Pages ==="
create_page "zh/knowledge/trends/what-is-trend.mdx" \
    "什么是趋势" \
    "理解趋势的定义、类型和识别方法" \
    "趋势, 上升趋势, 下降趋势, 横盘震荡, 趋势识别" \
    "## 趋势定义

### 道氏理论
[待补充：趋势的经典定义]

### 趋势的三种类型
[待补充：上升、下降、横盘]

### 趋势的三个级别
[待补充：主要、次要、短期]"

create_page "zh/knowledge/trends/support-resistance.mdx" \
    "支撑与阻力" \
    "掌握支撑位和阻力位的识别、画法和交易应用" \
    "支撑位, 阻力位, 支撑阻力互换, 关键价位" \
    "## 支撑与阻力原理

### 支撑位
[待补充：定义和识别]

### 阻力位
[待补充：定义和识别]

### 角色互换
[待补充：支撑变阻力]"

create_page "zh/knowledge/trends/trendlines.mdx" \
    "趋势线" \
    "学习趋势线的画法、验证和交易策略，包括扇形原理、数字3的应用" \
    "趋势线, 扇形原理, 斜率, 趋势线画法" \
    "## 趋势线基础

### 画法规则
[待补充：连接点选择]

### 验证方法
[待补充：有效性判断]

## 高级应用

### 扇形原理
[待补充：三条趋势线]

### 奇妙的数字"3"
[待补充：第三次触碰]

### 斜率的意义
[待补充：角度分析]"

create_page "zh/knowledge/trends/channels.mdx" \
    "管道线" \
    "理解价格通道的构建和应用" \
    "管道线, 价格通道, 平行通道, 通道交易" \
    "## 管道线构建

### 画法要点
[待补充：平行线技巧]

### 通道类型
[待补充：上升、下降、水平]

### 交易策略
[待补充：通道内交易]"

create_page "zh/knowledge/trends/retracements.mdx" \
    "百分比回撤" \
    "掌握回撤理论和斐波那契回撤的应用" \
    "百分比回撤, 斐波那契回撤, 38.2%, 50%, 61.8%" \
    "## 回撤理论

### 经典百分比
[待补充：33%、50%、66%]

### 斐波那契数列
[待补充：黄金比例]

### 实战应用
[待补充：支撑阻力判断]"

create_page "zh/knowledge/trends/speed-lines.mdx" \
    "速度阻挡线" \
    "了解速度线的原理和应用" \
    "速度线, 速度阻挡线, 1/3线, 2/3线" \
    "## 速度线原理

### 构建方法
[待补充：1/3和2/3分割]

### 应用场景
[待补充：趋势强度判断]"

create_page "zh/knowledge/trends/fan-lines.mdx" \
    "江恩与斐波那契扇形线" \
    "学习扇形线的画法和交易应用" \
    "江恩扇形线, 斐波那契扇形线, 角度线, 时间价格" \
    "## 江恩扇形线

### 江恩理论基础
[待补充：时间价格平衡]

### 扇形线画法
[待补充：角度计算]

## 斐波那契扇形线

### 构建方法
[待补充：比例关系]"

create_page "zh/knowledge/trends/internal-trendlines.mdx" \
    "内部趋势线" \
    "理解内部趋势线的概念和应用" \
    "内部趋势线, 有效趋势线, 趋势线调整" \
    "## 内部趋势线概念

### 与传统趋势线的区别
[待补充：穿越K线实体]

### 画法技巧
[待补充：更贴近价格]"

create_page "zh/knowledge/trends/reversal-days.mdx" \
    "反转日" \
    "识别和利用反转日信号" \
    "反转日, 关键反转日, 顶部反转, 底部反转" \
    "## 反转日定义

### 关键反转日
[待补充：条件和特征]

### 识别方法
[待补充：成交量配合]"

create_page "zh/knowledge/trends/gaps.mdx" \
    "跳空缺口" \
    "理解不同类型缺口的意义和交易策略" \
    "跳空缺口, 突破缺口, 持续缺口, 衰竭缺口" \
    "## 缺口类型

### 突破缺口
[待补充：特征和意义]

### 持续缺口
[待补充：测量意义]

### 衰竭缺口
[待补充：反转信号]"

echo "=== Creating Patterns Pages ==="
create_page "zh/knowledge/patterns/reversal-patterns.mdx" \
    "反转形态" \
    "掌握主要反转形态：头肩形、双顶双底、圆形等" \
    "反转形态, 头肩顶, 双顶, 三重顶, V型反转" \
    "## 主要反转形态

### 头肩形
[待补充：头肩顶和头肩底]

### 双重顶底
[待补充：M顶和W底]

### 三重顶底
[待补充：形态特征]

### 圆形顶底
[待补充：缓慢反转]

### V型反转
[待补充：急速反转]

### 钻石形态
[待补充：罕见形态]"

create_page "zh/knowledge/patterns/continuation-patterns.mdx" \
    "持续形态" \
    "识别持续形态：三角形、旗形、楔形等" \
    "持续形态, 三角形, 旗形, 楔形, 矩形" \
    "## 主要持续形态

### 三角形
[待补充：对称、上升、下降]

### 旗形和三角旗形
[待补充：短期整理]

### 楔形
[待补充：上升楔形和下降楔形]

### 矩形
[待补充：箱体整理]

### 扩大形态（喇叭形）
[待补充：波动扩大]"

create_page "zh/knowledge/patterns/gap-patterns.mdx" \
    "缺口形态" \
    "深入理解缺口的形态学意义" \
    "缺口形态, 岛形反转, 缺口理论" \
    "## 缺口形态学

### 岛形反转
[待补充：顶部和底部岛形]

### 缺口的回补
[待补充：回补规律]"

echo "=== Creating Volume Pages ==="
create_page "zh/knowledge/volume/trading-volume.mdx" \
    "交易量分析" \
    "理解成交量的意义和分析方法" \
    "成交量, 量价关系, 成交量指标, 量能分析" \
    "## 成交量基础

### 量价关系
[待补充：量价配合原则]

### 成交量形态
[待补充：放量、缩量、天量]"

create_page "zh/knowledge/volume/open-interest.mdx" \
    "持仓量分析" \
    "期货市场持仓量的分析和应用" \
    "持仓量, 未平仓合约, 持仓变化, 期货分析" \
    "## 持仓量意义

### 持仓量与价格
[待补充：四种组合关系]

### 持仓量与趋势
[待补充：趋势确认]"

create_page "zh/knowledge/volume/climax-selling.mdx" \
    "胀爆与抛售" \
    "识别市场极端情绪的量能特征" \
    "胀爆, 抛售高潮, 恐慌性抛售, 量能异常" \
    "## 极端量能

### 胀爆（Blow-off）
[待补充：顶部特征]

### 抛售高潮
[待补充：底部特征]"

create_page "zh/knowledge/volume/cot-report.mdx" \
    "交易商净头寸报告" \
    "解读COT报告，分析大户持仓" \
    "COT报告, 持仓报告, 商业头寸, 投机头寸" \
    "## COT报告解读

### 报告结构
[待补充：三类交易者]

### 分析方法
[待补充：极值和背离]"

create_page "zh/knowledge/volume/option-oi.mdx" \
    "期权持仓量分析" \
    "利用期权持仓量判断支撑阻力" \
    "期权持仓量, PCR比率, Max Pain, 期权分析" \
    "## 期权持仓量

### PCR比率
[待补充：看涨看跌比]

### Max Pain理论
[待补充：最大痛点]"

echo "=== Creating Moving Averages Pages ==="
create_page "zh/knowledge/moving-averages/ma-basics.mdx" \
    "移动平均线基础" \
    "掌握各类移动平均线的计算和应用" \
    "移动平均线, MA, SMA, EMA, 均线系统" \
    "## 均线类型

### 简单移动平均线（SMA）
[待补充：计算和特点]

### 指数移动平均线（EMA）
[待补充：计算和特点]

### 均线策略
[待补充：金叉死叉、多头排列]"

create_page "zh/knowledge/moving-averages/bollinger-bands.mdx" \
    "布林带线" \
    "理解布林带的原理和交易应用" \
    "布林带, 布林通道, 标准差, 波动率" \
    "## 布林带原理

### 构成要素
[待补充：中轨、上轨、下轨]

### 交易信号
[待补充：收口、张口、穿越]"

create_page "zh/knowledge/moving-averages/fibonacci-ma.mdx" \
    "斐波那契数字与均线" \
    "斐波那契数列在均线系统中的应用" \
    "斐波那契均线, 神奇数字, 13, 21, 34, 55" \
    "## 斐波那契均线系统

### 周期选择
[待补充：5、8、13、21、34、55]

### 实战应用
[待补充：支撑阻力判断]"

echo "=== Creating Oscillators Pages ==="
create_page "zh/knowledge/oscillators/momentum.mdx" \
    "动量指标" \
    "理解动量的概念和测量方法" \
    "动量, 动量指标, 价格变化率, 动量交易" \
    "## 动量原理

### 动量计算
[待补充：价格差值法]

### 动量解读
[待补充：零线和背离]"

create_page "zh/knowledge/oscillators/roc.mdx" \
    "变化速度（ROC）" \
    "掌握ROC指标的计算和应用" \
    "ROC, 变化率, 价格变化速度, 动量指标" \
    "## ROC指标

### 计算方法
[待补充：百分比变化]

### 交易信号
[待补充：零线穿越、超买超卖]"

create_page "zh/knowledge/oscillators/moving-average-oscillator.mdx" \
    "移动平均线摆动指标" \
    "双均线和三均线摆动指标的应用" \
    "均线摆动, 双均线系统, 三均线系统, MACD前身" \
    "## 均线摆动指标

### 双均线系统（2MA）
[待补充：快慢线差值]

### 三均线系统（3MA）
[待补充：加权计算]"

create_page "zh/knowledge/oscillators/rsi.mdx" \
    "相对强弱指数（RSI）" \
    "深入理解RSI的原理、计算和交易策略" \
    "RSI, 相对强弱指数, 超买超卖, 70/30, 背离" \
    "## RSI原理

### 计算方法
[待补充：RS和RSI公式]

### 70/30法则
[待补充：超买超卖区域]

### 背离信号
[待补充：顶背离和底背离]"

create_page "zh/knowledge/oscillators/stochastic.mdx" \
    "随机指标（%K与%D）" \
    "掌握KD指标的计算和应用技巧" \
    "随机指标, KD指标, %K, %D, 随机摆动" \
    "## 随机指标原理

### %K线计算
[待补充：原始随机值]

### %D线计算
[待补充：%K的移动平均]

### 交易信号
[待补充：金叉死叉、超买超卖]"

create_page "zh/knowledge/oscillators/williams-r.mdx" \
    "威廉指标（%R）" \
    "了解威廉%R的特点和应用" \
    "威廉指标, %R, 威廉%R, 超买超卖" \
    "## 威廉%R

### 计算方法
[待补充：与随机指标的关系]

### 应用技巧
[待补充：反向解读]"

create_page "zh/knowledge/oscillators/when-effective.mdx" \
    "摆动指数何时有效？" \
    "理解摆动指标的适用环境和局限性" \
    "摆动指标有效性, 震荡市, 趋势市, 指标钝化" \
    "## 有效性分析

### 震荡市场
[待补充：摆动指标的天堂]

### 趋势市场
[待补充：指标钝化问题]

### 综合应用
[待补充：与趋势指标配合]"

create_page "zh/knowledge/oscillators/macd.mdx" \
    "MACD指标详解" \
    "全面掌握MACD的原理、计算和交易策略" \
    "MACD, 指数平滑异同平均线, DIF, DEA, 柱状图" \
    "## MACD构成

### DIF线（快线）
[待补充：12-26 EMA差值]

### DEA线（慢线）
[待补充：DIF的9日EMA]

### MACD柱状图
[待补充：DIF-DEA]

### 交易策略
[待补充：金叉死叉、零轴、背离]"

create_page "zh/knowledge/oscillators/sentiment.mdx" \
    "投资者情绪指标" \
    "了解市场情绪指标的应用" \
    "投资者情绪, VIX, 恐惧贪婪指数, 看涨看跌比" \
    "## 情绪指标

### VIX恐慌指数
[待补充：波动率指数]

### Put/Call比率
[待补充：期权情绪]

### 恐惧贪婪指数
[待补充：CNN指数解读]"

echo "=== Creating Risk Management Pages ==="
create_page "zh/knowledge/risk-management/investment-risks.mdx" \
    "投资通常有哪些风险" \
    "全面了解投资中的各类风险" \
    "投资风险, 市场风险, 信用风险, 流动性风险, 系统性风险" \
    "## 风险分类

### 市场风险
[待补充：价格波动风险]

### 信用风险
[待补充：违约风险]

### 流动性风险
[待补充：买卖价差风险]

### 操作风险
[待补充：执行风险]"

create_page "zh/knowledge/risk-management/risk-tolerance.mdx" \
    "如何评估自己的风险承受能力" \
    "科学评估个人风险偏好和承受能力" \
    "风险承受能力, 风险偏好, 风险评估, 投资者类型" \
    "## 风险评估维度

### 财务状况
[待补充：收入、资产、负债]

### 投资目标
[待补充：期限和收益要求]

### 心理承受力
[待补充：波动容忍度]"

# stop-loss-take-profit.mdx already exists

create_page "zh/knowledge/risk-management/risk-reward-ratio.mdx" \
    "简单计算风险收益比" \
    "掌握风险收益比的计算和应用" \
    "风险收益比, 盈亏比, R值, 期望值" \
    "## 风险收益比计算

### 基本公式
[待补充：潜在收益/潜在损失]

### 合理比例
[待补充：1:2、1:3原则]

### 期望值计算
[待补充：胜率与盈亏比]"

create_page "zh/knowledge/risk-management/position-sizing.mdx" \
    "仓位管理策略" \
    "学习科学的仓位管理方法" \
    "仓位管理, 固定比例, 凯利公式, 资金管理" \
    "## 仓位管理方法

### 固定比例法
[待补充：2%规则]

### 凯利公式
[待补充：最优仓位计算]

### 金字塔加仓
[待补充：顺势加仓策略]"

create_page "zh/knowledge/risk-management/diversification.mdx" \
    "分散投资原则" \
    "理解和应用投资组合分散化策略" \
    "分散投资, 投资组合, 相关性, 资产配置" \
    "## 分散化原理

### 相关性分析
[待补充：负相关资产]

### 分散化方法
[待补充：资产类别、地域、时间]

### 过度分散问题
[待补充：收益稀释]"

create_page "zh/knowledge/risk-management/scaling.mdx" \
    "加仓与减仓策略" \
    "掌握正确的加仓和减仓时机与方法" \
    "加仓, 减仓, 金字塔, 倒金字塔, 仓位调整" \
    "## 加仓策略

### 金字塔加仓
[待补充：越涨越少]

### 等额加仓
[待补充：固定金额]

## 减仓策略

### 止盈减仓
[待补充：分批止盈]

### 风险减仓
[待补充：降低暴露]"

create_page "zh/knowledge/risk-management/equity-curve.mdx" \
    "资金曲线管理" \
    "通过资金曲线优化交易系统" \
    "资金曲线, 净值曲线, 回撤管理, 资金管理" \
    "## 资金曲线分析

### 曲线特征
[待补充：斜率、波动、回撤]

### 回撤管理
[待补充：最大回撤控制]

### 系统调整
[待补充：根据曲线优化]"

echo "=== Creating Trading System Page ==="
create_page "zh/knowledge/trading-system/building-system.mdx" \
    "构建自己的交易系统" \
    "系统化构建个人交易体系的完整指南" \
    "交易系统, 交易策略, 系统化交易, 交易计划" \
    "## 交易系统要素

### 市场选择
[待补充：交易什么]

### 入场规则
[待补充：何时买入]

### 出场规则
[待补充：何时卖出]

### 资金管理
[待补充：买多少]

### 风险控制
[待补充：如何止损]

## 系统测试

### 历史回测
[待补充：验证有效性]

### 模拟交易
[待补充：实盘前测试]

### 实盘优化
[待补充：持续改进]"

echo "=== Creating Elliott Wave Pages ==="
create_page "zh/knowledge/elliott-wave/overview.mdx" \
    "艾略特波浪理论概述" \
    "理解波浪理论的基本原理和核心概念" \
    "艾略特波浪, 波浪理论, 5-3结构, 推动浪, 调整浪" \
    "## 波浪理论基础

### 基本原理
[待补充：市场心理循环]

### 5-3波浪结构
[待补充：5浪推动3浪调整]

### 波浪等级
[待补充：9个级别]

### 三大铁律
[待补充：不可违背的规则]"

create_page "zh/knowledge/elliott-wave/corrective-waves.mdx" \
    "调整浪形态" \
    "掌握各种调整浪的形态和特征" \
    "调整浪, 锯齿形, 平台形, 三角形, 复杂调整" \
    "## 调整浪类型

### 锯齿形（5-3-5）
[待补充：形态特征]

### 平台形（3-3-5）
[待补充：形态特征]

### 三角形（3-3-3-3-3）
[待补充：形态特征]

### 复杂调整
[待补充：双重三重结构]"

create_page "zh/knowledge/elliott-wave/alternation.mdx" \
    "交替规则" \
    "理解波浪理论中的交替原则" \
    "交替规则, 波浪交替, 形态交替, 时间交替" \
    "## 交替原则

### 形态交替
[待补充：2浪与4浪]

### 时间交替
[待补充：调整时间差异]

### 幅度交替
[待补充：回撤程度差异]"

create_page "zh/knowledge/elliott-wave/channels.mdx" \
    "价格管道" \
    "波浪理论中的管道应用技巧" \
    "波浪管道, 平行通道, 基准线, 波浪投射" \
    "## 管道技术

### 基准管道
[待补充：0-2-4连线]

### 加速管道
[待补充：1-3-5连线]

### 目标投射
[待补充：第5浪目标]"

create_page "zh/knowledge/elliott-wave/wave-four.mdx" \
    "第4浪的意义（支撑区）" \
    "理解第4浪作为重要支撑区的意义" \
    "第4浪, 支撑区, 回调支撑, 波浪支撑" \
    "## 第4浪特征

### 形态特点
[待补充：横盘整理为主]

### 支撑作用
[待补充：后市重要支撑]

### 交易策略
[待补充：4浪区域买入]"

create_page "zh/knowledge/elliott-wave/fibonacci-ratios.mdx" \
    "斐波那契比例关系" \
    "波浪理论中的斐波那契应用" \
    "斐波那契, 黄金比例, 0.618, 1.618, 波浪比例" \
    "## 比例关系

### 推动浪比例
[待补充：1、3、5浪关系]

### 调整浪比例
[待补充：回撤比例]

### 价格投射
[待补充：目标计算]"

create_page "zh/knowledge/elliott-wave/time-targets.mdx" \
    "时间目标" \
    "利用斐波那契时间周期预测转折点" \
    "时间周期, 斐波那契时间, 时间窗口, 周期分析" \
    "## 时间分析

### 斐波那契时间序列
[待补充：3、5、8、13、21...]

### 时间窗口
[待补充：关键时间点]

### 时间比例
[待补充：浪与浪的时间关系]"

echo "=== All placeholder pages created successfully! ==="
echo "Total pages created: Check the output above for details"
echo "You can now fill in the content for each page one by one."