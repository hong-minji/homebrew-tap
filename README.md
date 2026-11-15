# hong-minji/homebrew-tap

Homebrew tap for [AI Usage Bar](https://github.com/hong-minji/ai-usage-bar), a macOS menu bar app that shows your remaining Claude, ChatGPT, Gemini and Antigravity quota in one line.

[AI Usage Bar](https://github.com/hong-minji/ai-usage-bar)의 Homebrew tap입니다. Claude · ChatGPT · Gemini · Antigravity의 남은 사용량을 Mac 메뉴바 한 줄로 보여주는 앱입니다.

## Install / 설치

```sh
brew install --cask hong-minji/tap/ai-usage-bar
```

The app is ad-hoc signed and not notarized, so macOS blocks the first launch. Open it once, then allow it under **System Settings → Privacy & Security → Open Anyway**.

앱은 임시 서명만 되어 있고 공증되지 않아 첫 실행 때 macOS가 차단합니다. 한 번 실행을 시도한 뒤 **시스템 설정 → 개인정보 보호 및 보안 → 그래도 열기**에서 허용하세요.

## Upgrade / 업데이트

```sh
brew upgrade --cask ai-usage-bar
```

Then reload the bundled Chrome extension at `chrome://extensions/`. / 업데이트 후 `chrome://extensions/`에서 확장을 새로고침하세요.

## Uninstall / 삭제

```sh
brew uninstall --cask ai-usage-bar        # the app only / 앱만
brew uninstall --zap --cask ai-usage-bar  # app, settings, cache and login item / 설정·캐시·자동 실행까지
```

Setup, connections and troubleshooting are documented in the [app repository](https://github.com/hong-minji/ai-usage-bar#readme). / 연결 방법과 문제 해결은 [앱 저장소](https://github.com/hong-minji/ai-usage-bar#readme)를 참고하세요.
