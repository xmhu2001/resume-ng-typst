#import "@preview/resume-ng:1.0.0": *

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

#resume-education(
  university: "中国科学技术大学",
  degree: "工学学士",
  school: "网络空间安全，网络空间安全学院",
  start: "2019-09",
  end: "2023-06"
)[
- *GPA: 3.51/4.3*，获专项奖学金、学业奖学金多次，*全国大学生数学竞赛一等奖*
]

#resume-section[技术能力]
- *语言基础*: 常用 Golang, C++；了解 Golang slice, map 和 channel等底层实现，了解GMP模型与垃圾回收机制；熟悉C++11特性，包括智能指针等；掌握 C, Python, JavaScript。
- *基础知识*：具备扎实的操作系统和计算机网络基础，熟悉操作系统的进程管理、内存管理以及TCP/IP、HTTP/HTTPS协议等内容。
- *CI/CD实践*：熟悉CI/CD，基于GitHub Actions搭建自动化流水线，实现操作系统课程主页的持续部署。
- *容器化应用*：了解Docker容器化技术，具备将项目打包为Docker镜像，优化部署流程的经历。

#resume-section[实习经历]

#resume-project(
  title: "美团 - 核心本地商业 - 酒店旅行技术部 - 民宿研发组",
  duty: "后端开发",
  start: "2025-05",
  end: "2025-09"
)[

工作职责：参与民宿房东端业务需求研发，如房源实拍视频、IM 内容风控等，；参与系统日常稳定性治理，包括慢查询、NPE等问题，保障服务稳定运行

主要工作：

- 参与房源卫生承诺保障活动开发，对于设置的卫生保障政策，采用 Cache Aside 模式保障高频场景下的数据一致性，并引入消息队列对业务流程进行异步解耦

- 增强 IM 内容审核链路，构建了基于消息队列与事件驱动的异步风控方案。通过运用工厂模式与策略模式实现多业务、多类型内容的审核逻辑解耦

- 开发房源实拍视频功能，。目前线上实拍房源80000+，实拍视频订单覆盖率8%，增量平稳

]

#resume-section[开源经历]

参与蚂蚁集团开源项目 agentUniverse 与阿里国际开源项目 Agentic-ADK 的功能扩展与组件贡献

- 实现基于 Jina 的 Rerank 组件，优化 RAG 检索结果排序
- 集成 Weaviate 向量数据库，支持高效存储与检索，增强大规模语义搜索与知识管理能力
- 贡献 YouTube Tool，支持 LLM 通过 tool call 调用获取 YouTube 相关数据

#resume-section[项目经历]

#resume-project(
  title: "仿抖音短视频",
  duty: "Golang, 微服务, Redis, MySQL",
)[
  
  *项目描述：*
  本项目是基于微服务开发的短视频项目，实现了视频观看、视频互动、用户社交、搜索等功能，并且在项目开发过程中考虑到了分布式、高并发与高流量问题，大数据量下仍然能提供高效可靠的音视频服务
  
  *亮点工作：* 
  
]

#resume-section[个人总结]

- 本人乐观开朗、在校成绩优秀、自驱能力强，具有良好的沟通能力和团队合作精神。
- 可以使用英语进行基本工作交流（六级成绩523），平时有阅读英文资料与书籍的习惯。
- 有四年 Linux 使用经验，较为丰富的软件开发经验，善于通过AI工具提升代码质量与工作效率。
