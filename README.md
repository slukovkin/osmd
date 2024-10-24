# Техническое задание на разработку мобильного приложения для ОСМД на платформе Flutter

## Цель проекта

Создать мобильное приложение для управления жилым массивом (ОСМД), которое предоставит жителям
доступ к важной информации и инструментам для взаимодействия с администрацией и друг с другом.

## Платформа

- Flutter (Android/iOS)

## Основные функции

### 1. Новости массива

- Раздел для публикации и просмотра новостей и объявлений.
- Возможность фильтрации новостей по категориям (важные, общие, уведомления об отключениях и т.д.).
- Уведомления о новых публикациях (push-уведомления).

### 2. Информация для жильцов

- Страница с общей информацией о жилом массиве: контакты управляющего, службы и экстренные телефоны.
- Персональные данные каждого жильца: адрес, квартира, статус оплаты.
- Возможность обновления личной информации (например, контактных данных).

### 3. Чат

- Групповой чат для общения между жильцами и администрацией.
- Возможность создавать отдельные группы для обсуждения конкретных тем (например, обсуждение
  ремонта, собраний и т.д.).
- Встроенная система уведомлений о новых сообщениях.

### 4. Хранение показаний счетчиков

- Возможность жильцам вручную вносить показания счетчиков за электричество, воду и газ.
- Поддержка ввода данных с возможностью просмотра истории показаний.
- Функция напоминаний о необходимости внесения показаний через push-уведомления.

### 5. Служба охраны

- Контакты охраны и возможность экстренного вызова через приложение.
- Раздел для подачи заявок на пропуск гостей с указанием даты и времени.
- Уведомления о выполнении заявок.

### 6. Выставление счетов

- Автоматический расчет сумм за коммунальные услуги на основе введенных жильцами показаний
  счетчиков.
- Возможность просматривать историю счетов и оплат.
- Интеграция с платежными системами для оплаты коммунальных услуг через приложение.

### 7. Уведомления

- Push-уведомления о новых новостях, выставленных счетах, сообщениях в чате и напоминаниях о
  необходимости подачи показаний.
- Поддержка кастомизации уведомлений (возможность выбора типа уведомлений, которые хочет получать
  пользователь).

## Дополнительные требования

### Регистрация и аутентификация

- Возможность регистрации и авторизации пользователей через email и телефонный номер.
- Поддержка двухфакторной аутентификации.

### Административная панель

- Администраторы (ОСМД) смогут управлять пользователями, публиковать новости, создавать счета,
  просматривать данные жильцов через мобильное приложение или веб-интерфейс.

### Безопасность

- Все данные должны передаваться через защищенные каналы (SSL).
- Важно предусмотреть защиту личных данных пользователей и соблюдение требований законодательства о
  защите данных (например, GDPR).

## Дизайн и UI/UX

- Приложение должно быть интуитивно понятным и удобным для использования всеми категориями жильцов.
- Использование стандартных компонентов Flutter для кросс-платформенности и высокой
  производительности.
- Простой, минималистичный интерфейс с возможностью настройки цветовой схемы (тёмная и светлая
  темы).

## Технические детали

- **Бэкенд**: REST API для взаимодействия с серверной частью (можно использовать Node.js/NestJS с
  базой данных PostgreSQL/MySQL).
- **База данных**: хранение данных о жильцах, показаниях, счетах, новостях и чатах в реляционной
  базе данных.
- **Хостинг**: серверная часть может быть размещена в облаке (например, AWS, Google Cloud, Heroku).

## Сроки разработки

- Ожидаемая продолжительность разработки MVP — 3-4 месяца.

## Этапы разработки

1. **Сбор требований и проектирование** — 2 недели
2. **Разработка и настройка серверной части** — 4 недели
3. **Разработка пользовательского интерфейса** — 4 недели
4. **Интеграция с бэкендом и API** — 3 недели
5. **Тестирование и исправление ошибок** — 3 недели
6. **Запуск и развертывание** — 2 недели

## Тестирование и поддержка

- Функциональное и нагрузочное тестирование.
- Поддержка после запуска (в течение 3 месяцев для исправления багов).

# Структура мобильного приложения для ОСМД на платформе Flutter

## 1. Основная архитектура

Использование архитектурного подхода **BLoC (Business Logic Component)** или **Provider** для
управления состоянием приложения для обеспечения масштабируемости и тестируемости.

## 2. Структура каталогов

```bash
lib/
│
├── core/
│   ├── constants/       # Глобальные константы (цвета, размеры, строки)
│   ├── services/        # Сервисы для работы с API, уведомлениями и т.д.
│   ├── utils/           # Утилиты и вспомогательные функции
│   └── widgets/         # Общие виджеты, используемые в разных частях приложения
│
├── models/              # Модели данных (новости, показания счетчиков, счета, пользователи и т.д.)
│
├── repositories/        # Репозитории для работы с данными (локальные или серверные)
│
├── blocs/               # Логика состояния (BLoC или Provider для управления состоянием)
│
├── screens/             # Экранные компоненты (каждая часть приложения в отдельном каталоге)
│   ├── auth/            # Экраны регистрации и авторизации
│   ├── home/            # Главный экран с навигацией
│   ├── news/            # Раздел новостей
│   ├── info/            # Информация для жильцов
│   ├── chat/            # Чат
│   ├── meter_readings/  # Показания счетчиков (электроэнергия, вода, газ)
│   ├── security/        # Раздел службы охраны
│   ├── billing/         # Выставление счетов и история оплат
│   └── settings/        # Настройки пользователя и приложения
│
├── widgets/             # Виджеты, специфичные для конкретных экранов
│
└── main.dart            # Точка входа в приложение
