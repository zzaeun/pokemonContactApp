## 🦧 포켓몬 연락처 앱 만들기 
이 앱은 네트워크 통신을 이용해서 서버에서 랜덤 포켓몬 이미지를 불러오고, 연락처(이름, 전화번호, 프로필 이미지)를 저장 및 관리할 수 있습니다.

<img width="160" height="400" alt="image" src="https://github.com/user-attachments/assets/3558bdfb-853d-450a-bab7-81dddfb583f2" /> 
<img width="160" height="400" alt="image" src="https://github.com/user-attachments/assets/a38d7431-2fcb-45de-8cf0-b435b6a0982a" />

<br>

---

## ⚒️ Development Environment
<img src="https://img.shields.io/badge/swift-%23FA7343.svg?&style=for-the-badge&logo=swift&logoColor=white" />

![Static Badge](https://img.shields.io/badge/iOS-18.5-blue)
![Static Badge](https://img.shields.io/badge/Xcode-16.4-green)
![Static Badge](https://img.shields.io/badge/SnapKit-5.7.1-beige)
![Static Badge](https://img.shields.io/badge/URLSession-yellow)
![Static Badge](https://img.shields.io/badge/UserDefaults-purple)

<br>

---

## 💻 주요 기능

- 랜덤 포켓몬 이미지 불러오기
- 연락처에 포켓몬 이미지 프로필 적용
- 연락처 추가 및 수정 기능
- 연락처 정보(이름, 전화번호, 프로필 이미지) 로컬 저장
- 연락처 목록을 이름순으로 정렬
<br>

---

## 🖋️ Git Commit

- Add : 새로운 파일 및 폴더 추가
- Feat : 새로운 기능 추가
- Fix : 버그 수정
- Refactor : 기능 변경 없이 코드 구조를 개선(가독성, 성능 향상 등)
- Docs : README, 주석 등 문서 추가 또는 수정(코드 변경 없음)
- Chore : 빌드 설정, 패키지 매니저 구성 등 기타 작업
- Revert : 이전 커밋을 되돌리는 작업

- Ex) [Add] "commit 내용"
<br>

---
## 📁 Foldering
```
│   ├── ViewController.swift
├── PhoneBook
│   ├── ContactData.swift
│   ├── ContactStorage.swift
│   └── PhoneBookViewController.swift
├── PokemonAPI
│   ├── PokemonAPI.swift
│   ├── PokemonData.swift
│   └── PokemonImage.swift
├── TableView
│   ├── TableViewCell.swift
│   └── TableViewController.swift
