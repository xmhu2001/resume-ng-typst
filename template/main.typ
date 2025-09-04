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

- *Kafka*：熟悉 Kafka 消息有序性、可靠性、幂等性、消息积压解决方案

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
- 参与房源实拍视频认证功能开发，将视频上传划分为草稿-审核-正式三个阶段，通过*消息队列*对视频审核等步骤进行解耦，通过 *Redis分布式锁* 保证同一房源在并发场景下只被一个消费者处理。此功能提升了房源信息的可信度和用户体验，目前线上实拍房源8w+，实拍视频订单覆盖率7.9%，增量平稳

- 增强IM内容审核链路，构建了基于消息队列与事件驱动的*异步*风控方案。通过*工厂模式*与*策略模式*实现多类型内容的审核逻辑，对骗押行为触发风险提示消息卡片，有效遏制了60.5%的骗押行为，节约了 39.4% 的平台赔付支出

- 为房东IM智能助手小袋提供城市热度查询能力，实现了基于行政区代码的多源数据聚合，采用*责任链*式数据回退机制，保证缺失当天数据时系统可用性；提供房源验真批量查询能力，基于*CompletableFuture*与*自定义线程池*实现并行聚合，提升查询效率
]

#resume-section[项目经历]

#resume-project(
  title: "仿抖音短视频",
  duty: "Golang, 微服务, Redis, MySQL, Kafka, ElasticSearch",
  start: "2024-09",
  end: "2024-11"
)[

  *项目描述：*
  本项目是基于微服务开发的短视频项目，实现了视频上传、视频互动、用户评论、搜索等功能，并且在项目开发过程中考虑到了高并发问题，大数据量下仍然能提供高效可靠的短视频服务

  *亮点工作：* 
  - 引入基于Redis的*分布式锁*保证用户注册、关注用户等逻辑的并发安全，确保数据一致性

  - 利用Redis中的*Bitmap*数据结构特点来保存点赞信息，使用*ZSet*数据结构保存用户关注信息

  - 使用*Kafka+Redis*实现高性能的*异步*点赞，提高系统效率的同时保证点赞数据的最终一致性

  - 通过*Kafka*来*同步*用户信息修改与视频信息修改操作到*ES索引库*，保证搜索结果的准确性与时效性
]

#resume-section[开源经历]

参与蚂蚁集团开源项目 *agentUniverse* 与阿里国际开源项目 *Agentic-ADK* 的功能扩展与组件贡献

- 实现基于 Jina 的 Rerank 组件，优化 RAG 检索结果排序

- 贡献 YouTube Tool，支持 LLM 通过 tool call 调用获取 YouTube 相关数据

- 集成 Weaviate 向量数据库，支持高效存储与检索，增强大规模语义搜索与知识管理能力

