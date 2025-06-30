cd ../solana-ping-api

# commit 数量
echo "=== Commit Statistics ===" > ../results/repo_analysis.txt    
git shortlog -s -n >> ../results/repo_analysis.txt

authors=$(git log --format='%an' | sort | uniq)

echo "" >> ../results/repo_analysis.txt
echo "=== Author Details ===" >> ../results/repo_analysis.txt

# 修改行数
for author in $authors; do
    echo "作者: $author" >> ../results/repo_analysis.txt

    git log --author="$author" --pretty=tformat: --numstat | \
    awk '{ add += $1; subs += $2; loc += $1 - $2 } END { print "Added:",add,"Removed:",subs,"Net:",loc }' >> ../results/repo_analysis.txt

    echo -n "首次提交: " >> ../results/repo_analysis.txt
    git log --author="$author" --reverse --pretty=format:"%ad %h %s" --date=short | head -n1 >> ../results/repo_analysis.txt

    echo -n "最近提交: " >> ../results/repo_analysis.txt
    git log --author="$author" --pretty=format:"%ad %h %s" --date=short | head -n1 >> ../results/repo_analysis.txt

    echo "" >> ../results/repo_analysis.txt
done

echo "分析结果已保存到 ../results/repo_analysis.txt"