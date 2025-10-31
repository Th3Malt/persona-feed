# PersonaFeed

**PersonaFeed** é um aplicativo Flutter de feed de usuários, inspirado em redes sociais, que consome a API pública [Random User](https://randomuser.me/api/) e permite persistir usuários localmente. Desenvolvido como parte de um desafio técnico, utilizando **MVVM**, **Cubit**, **Repository Strategy**, **Isar** para persistência e **Dio** para requisições HTTP.

O app possui design limpo e modularizado, com três telas principais: Feed, Detalhes do usuário e Usuários Persistidos.

---

## 📌 Funcionalidades

- Feed de usuários obtidos via API pública.
- Atualização automática a cada 5 segundos usando `Ticker`.
- Persistência local offline com **Isar**.
- Visualização detalhada do usuário.
- Lista de usuários persistidos com opção de remoção.
- Sincronização entre feed, detalhes e lista de persistidos.
- Navegação declarativa usando **GoRouter**.
- Logs detalhados de requisições HTTP via **Dio + CurlLoggerInterceptor**.

---

## 🏗 Arquitetura

O projeto segue **MVVM** com **Repository Strategy**, gerenciamento de estado via **Cubit** e injeção de dependências via **GetIt**.

**UI / Views**
- HomePage
- DetailPage
- PersistedPage

**Cubits / ViewModels**
- `PersonCubit` → feed de usuários + ticker
- `PersonDetailCubit` → detalhes de um usuário
- `PersonPersistedCubit` → lista de usuários persistidos

**Repositories**
- `PersonRepository` → API + persistência local (Isar)

**Data / Models**
- `PersonEntity` → model do usuário

**Persistence**
- Isar

**Notas sobre Cubits**
- **PersonCubit (singleton):** mantém lista global de usuários e IDs persistidos, atualiza feed e sincroniza com outros cubits.  
- **PersonDetailCubit (factory):** gerencia salvar/remover usuário, notifica `PersonCubit`.  
- **PersonPersistedCubit (factory):** gerencia lista de usuários persistidos, escutando alterações do `PersonCubit`.

---

## 🛠 Pacotes utilizados

- [flutter_bloc](https://pub.dev/packages/flutter_bloc) — gerenciamento de estado.  
- [get_it](https://pub.dev/packages/get_it) — injeção de dependências.  
- [dio](https://pub.dev/packages/dio) — requisições HTTP.  
- [curl_logger_dio_interceptor](https://pub.dev/packages/curl_logger_dio_interceptor) — debug de API.  
- [isar](https://pub.dev/packages/isar) + [isar_flutter_libs](https://pub.dev/packages/isar_flutter_libs) — banco de dados local rápido.  
- [go_router](https://pub.dev/packages/go_router) — navegação declarativa.  
- [scrollable_positioned_list](https://pub.dev/packages/scrollable_positioned_list) — scroll avançado no feed.  
- [cupertino_icons](https://pub.dev/packages/cupertino_icons) — ícones nativos.

---

## 📱 Telas

1. **Feed**
   - Lista de usuários da API.
   - Atualização automática a cada 5 segundos.
   - Botão para acessar usuários persistidos.
   - Cada item abre detalhes do usuário.

2. **Detalhes do usuário**
   - Exibe todas as informações.
   - Botão para salvar/remover usuário.
   - Atualiza feed automaticamente após ação.

3. **Usuários Persistidos**
   - Lista de usuários salvos localmente.
   - Permite remoção direta.
   - Cada item abre detalhes do usuário.

> A lista persistida é sincronizada automaticamente com o feed.

---

## 📂 Estrutura de Pastas


```bash
lib/
├─ main.dart
├─ core/
│ ├─ di/
│ │ ├─ di_imports.dart
│ │ └─ locator.dart
│ ├─ router/
│ │ ├─ app_router.dart
│ │ └─ router_imports.dart
│ └─ services/
│ ├─ http/
│ │ ├─ dio/
│ │ ├─ http_imports.dart
│ │ ├─ http_service_factory.dart
│ │ ├─ i_http_service.dart
│ │ └─ response_model.dart
│ └─ services_imports.dart
│ └─ core_imports.dart
├─ features/
│ ├─ person/
│ │ ├─ data/
│ │ │ ├─ datasources/
│ │ │ ├─ models/
│ │ │ └─ repositories/
│ │ │ └─ data_imports.dart
│ │ ├─ domain/
│ │ │ ├─ entities/
│ │ │ └─ repositories/
│ │ │ └─ domain_imports.dart
│ │ └─ presentation/
│ │ ├─ cubits/
│ │ ├─ views/
│ │ ├─ widgets/
│ │ └─ presentation_imports.dart
│ │ └─ person_imports.dart
│ └─ features_imports.dart
└─ app_imports.dart
```

## 💡 Observações Técnicas

Persistência: Isar foi escolhido por performance e facilidade de queries offline.

Sincronização: Cubits separados (PersonCubit, PersonDetailCubit, PersonPersistedCubit) garantem atualização consistente entre feed, detalhes e persistidos.

MVVM: Cada View observa apenas o Cubit correspondente, mantendo UI desacoplada da lógica de negócio.

Ticker: usado para polling a cada 5 segundos, ao invés de Timer, para mais controle e performance.