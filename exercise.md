# 630exercise

- 分析一个Repo的贡献者的贡献度https://github.com/solana-labs/solana-ping-api/
  - 检查commit数量，修改行数，第一次、最后一次提交日期等
  scripts/RepoAnalysis.sh
  
- 比较一个Repo中的两个Commit的差异https://github.com/jup-ag/jup-lock，比较2d45d4069f9608765c0cfeb8bb154a0d7a3e19b3和2995552b3d94c040f340854552597c3386d79f8f的差异
  https://github.com/jup-ag/jup-lock/compare/2d45d4069f9608765c0cfeb8bb154a0d7a3e19b3...2995552b3d94c040f340854552597c3386d79f8f

  - 检查文件变化和行变化数是否正确


​    

- 进一步的，可以不提供Commit Hash，而是提供序号，比如：比较https://github.com/rust-lang/rust-clippy中第10000个commit和第10100个commit的差异

  - 检查文件变化和行变化数是否正确



- 找出一个公开Repo中，有关键词的commit数量
  - 找一个合适的归档的项目，比如：
    - ‣ 中带有 fix 的commit 的数量
  - 检查数字是否正确
