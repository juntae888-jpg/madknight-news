# 🌙 MadKnight 뉴스

매일 아침 08:00 KST AI 트렌드 브리핑 아카이브 (GitHub Pages).

- 메인: `index.html` — 브리핑 목록 (새 브리핑은 `BRIEFINGS` 배열 맨 앞에 한 줄 추가)
- 브리핑 페이지: `news/YYYY-MM-DD.html`
- 디스코드 전송: `.github/workflows/discord-post.yml`이 `discord/latest.json`을 `DISCORD_WEBHOOK` 시크릿으로 POST

## 최초 설정

1. 이 폴더에서 `push.bat` 실행 (Windows, git 필요) → `juntae888-jpg/madknight-news`에 푸시
2. GitHub 리포 **Settings → Pages** → Branch `main` / `/ (root)` → Save
3. **Settings → Secrets and variables → Actions** → New repository secret → 이름 `DISCORD_WEBHOOK`, 값에 디스코드 웹훅 URL
4. **Actions 탭** → "Post briefing to Discord" → Run workflow

사이트 주소: https://juntae888-jpg.github.io/madknight-news/
