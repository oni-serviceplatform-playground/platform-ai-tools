#!/bin/bash
# 간단한 배포 커맨드 예제

echo "🚀 배포 시작..."

# 1. 테스트 실행
echo "📝 테스트 실행 중..."
npm test
if [ $? -ne 0 ]; then
    echo "❌ 테스트 실패! 배포 중단."
    exit 1
fi

# 2. 빌드
echo "🔨 빌드 중..."
npm run build
if [ $? -ne 0 ]; then
    echo "❌ 빌드 실패! 배포 중단."
    exit 1
fi

# 3. 배포 (예시)
echo "📦 배포 중..."
# rsync -avz ./dist/ user@server:/var/www/html/
# 또는
# docker build -t myapp .
# docker push myapp

echo "✅ 배포 완료!"