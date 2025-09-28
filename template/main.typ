// #import "@preview/resume-ng:1.0.0": *
#import "lib.typ": *

#show list: it => {
  set list(marker: [#text(2.0em, sym.bullet)])
  it
}

#show: project.with(
  title: "Resume-ng",
  author: (name: "胡轩敏"),
  contacts: 
    (
      "+86 137-0921-0352",
       link("mailto:xmhu2001@mail.ustc.edu.cn", "xmhu2001@mail.ustc.edu.cn"),  
       link("https://www.yuque.com/yuqueyonghu5pi3hd", "yuque.com/hxm"),
       link("https://github.com/xmhu2001", "github.com/xmhu2001"),  
    )
)

#resume-section("教育背景")
#resume-education(
  university: "中国科学技术大学",
  degree: "学术型硕士研究生",
  school: "网络空间安全，网络空间安全学院",
  start: "2023-09",
  end: "2026-06"
)[
- 担任2024秋季学期*操作系统课程助教*，多次获得学业奖学金
]
// #v(-6pt)
#resume-education(
  university: "中国科学技术大学",
  degree: "工学学士",
  school: "网络空间安全，网络空间安全学院",
  start: "2019-09",
  end: "2023-06"
)[
- *GPA: 3.51/4.3，CET6: 523*，获专项奖学金、学业奖学金多次，*全国大学生数学竞赛一等奖*
]

#resume-section[技术能力]
- *编程语言*: 常用 Golang，了解 Golang slice, map 和 channel等底层实现，了解GMP模型与垃圾回收机制

- *MySQL*：熟悉MySQL的基本使用和原理，掌握索引、事务、MVCC、存储引擎、日志等机制

- *Redis*：熟悉Redis数据结构、持久化、分布式锁等机制，掌握缓存击穿、穿透与雪崩的解决方案

- *消息队列*：熟悉 RocketMQ 架构以及消息有序性、可靠性、幂等性、消息积压的解决方案

- *计算机网络*：熟悉TCP、UDP、HTTP/HTTPS等网络协议，掌握TCP三次握手、四次挥手、流量控制等机制

- *操作系统*：熟悉操作系统的进程管理、内存管理等，掌握进程间通信技术等

#resume-section[实习经历]

#resume-project(
  title: "美团 - 核心本地商业 - 酒店旅行技术部 - 民宿研发组",
  duty: "Java后端开发",
  start: "2025-05",
  end: "2025-09"
)[

工作职责：参与民宿房东端业务需求研发，主要负责房源以及 IM 服务相关功能开发；参与系统日常稳定性治理，处理慢查询、慢响应、NPE等问题，保障服务稳定运行

主要工作：
- 参与房源实拍视频认证功能开发，将视频上传划分为草稿-审核-正式三个阶段，通过*消息队列*对视频审核等步骤进行解耦，使用*旁路缓存*模式适配 C 端高 QPS 查询。目前线上实拍房源9w+，实拍视频订单覆盖率8.9%，增量平稳

- 增强IM内容审核链路，构建了基于消息队列与事件驱动的*异步*风控方案。通过*工厂模式*与*策略模式*实现多类型内容的审核逻辑，对骗押行为触发风险提示消息卡片，有效遏制了60.5%的骗押行为，节约了 39.4% 的平台赔付支出

- 为房东IM智能助手小袋提供城市热度查询能力，实现了基于行政区代码的多源数据聚合，通过数据回退机制，保证缺失当天数据时系统可用性；提供房源验真批量查询能力，基于*CompletableFuture*与*自定义线程池*实现并行聚合，提升查询效率
]

#resume-section[项目经历]

#resume-project(
  title: "仿抖音短视频",
  duty: "Golang, 微服务, Redis, MySQL, RocketMQ, ElasticSearch",
  start: "2024-09",
  end: "2024-11"
)[

  *项目描述：*
  本项目是基于微服务开发的短视频项目，实现了视频上传、视频互动、用户评论、搜索等功能，并且在项目开发过程中考虑到了高并发问题，大数据量下仍然能提供高效可靠的短视频服务

  *亮点工作：* 

  - 为了实现视频详情查询接口高并发读，通过 Goroutine 并发查询用户和评论信息，降低接口响应耗时；并通过*二级缓存*进一步提高性能；笔记更新、删除时，使用 *RocketMQ 广播消息*，实现集群下对本地缓存的删除，保证数据一致性

  - 为了实现点赞接口高并发写，使用 *计数布隆过滤器* 高效判断用户是否点赞，通过 *Redis ZSET+RocketMQ 异步落库*，消费者中使用*令牌桶算法*实现流量削峰，防止打垮数据库

  - 针对关注/取关用户接口，使用 *Lua 脚本* 避免频繁操作 Redis 造成的性能瓶颈，且保证多次操作的原子性；消费者使用*联合唯一索引*保证关系记录的*幂等性*

  - 通过 RocketMQ *延时消息*实现视频的定时发布；通过*RocketMQ*来同步视频与用户信息修改操作到*ES索引库*，保证搜索结果的准确性与时效性
]

// #resume-project(
//   title: "uTask 定时微服务系统",
//   duty: "Golang, 微服务, Redis, MySQL",
//   start: "2024-04",
//   end: "2024-06"
// )[
  
//   *项目描述：*
//   uTask 是基于 Go 语言开发的一个定时微服务系统，可以作为微服务下的闹钟服务，支持高精准，高负载的定时需求处理
  
//   *亮点工作：* 
//   - 通过运用*MySQL+Redis*的二级存储结构，数据冷热分区设计，为高频扫描提供基础，同时结合Go协程池等技术，将定时任务的精准度控制在秒级

//   - 支持同时大批量任务触发。引入Redis ZSET对数据分片，为任务并发处理提供基础；结合Go协程池等技术，有效应对高负载情况

//   - 通过定时迁移模块设计，让动态热数据始终维护在缓存，方便高效存取。冷数据则存储在磁盘中，减少对缓存等关键资源的占用
// ]

#resume-section[开源经历]

参与蚂蚁集团开源项目 *agentUniverse* 与阿里国际开源项目 *Agentic-ADK* 的功能扩展与组件贡献

- 实现基于 Jina 的 Rerank 组件，优化 RAG 检索结果排序

- 贡献 YouTube Tool，支持 LLM 通过 tool call 调用获取 YouTube 相关数据

- 集成 Weaviate 向量数据库，支持高效存储与检索，增强大规模语义搜索与知识管理能力

