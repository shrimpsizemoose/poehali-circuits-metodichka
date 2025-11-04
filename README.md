# Сайт "Схемотехника для художников"

Веб-версия методички, созданная с помощью Hugo и темы Book.
Методичка создана для образовательного проекта ["Поехали!"-2025](https://sciart.lol/poehali-2025)

**Создано с помощью [Hugo](https://gohugo.io/) и [Book Theme](https://github.com/alex-shpak/hugo-book)** ⚡

## 🚀 Квикстарт

### Локальный запуск

```bash
# Установка Hugo (если еще не установлен)
# macOS:
brew install hugo

# Linux:
sudo apt install hugo  # или snap install hugo

# Windows:
choco install hugo-extended

# Запуск локального сервера
cd website
hugo server -D

# Откройте http://localhost:1313
```

### Сборка для продакшена

```bash
hugo --minify
# Результат в папке public/
```

## 📦 Структура проекта

```
website/
├── hugo.toml           # Конфигурация Hugo
├── content/
│   └── docs/
│       ├── _index.md        # Главная страница
│       ├── intro.md         # Введение
│       ├── cheatsheet.md    # Шпаргалка
│       ├── exercises/       # Базовые упражнения 1-10
│       │   ├── _index.md
│       │   └── exercise_*.md
│       └── bonus/           # Бонусные упражнения 11-20
│           ├── _index.md
│           └── exercise_*.md
├── themes/
│   └── book/           # Hugo Book Theme
└── public/             # Скомпилированный сайт (gitignored)
```

## ✏️ Редактирование контента

### Добавить новое упражнение

```bash
hugo new docs/exercises/exercise_21_new.md
```

### Изменить существующее

Ручками поправить в `content/docs/...`

### Обновить конфигурацию

Редактируй `hugo.toml`

## 🎨 Кастомизация темы

### Изменить цвета

Создать `assets/custom.scss`:

```scss
:root {
  --color-link: #ff6b6b;
  --color-visited-link: #c92a2a;
}
```
