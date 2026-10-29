#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
if ! command -v flutter >/dev/null 2>&1; then
  echo "Flutter nao encontrado. Configure o Flutter SDK antes de executar este script." >&2
  exit 1
fi
flutter create --platforms=android .
flutter pub get
echo "Projeto Android preparado. Abra esta pasta no Android Studio e execute o app."
