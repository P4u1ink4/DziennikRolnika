# DziennikRolnika

Aplikacja wspomagająca zarządzanie gospodarstwem rolnym. Pozwala na prowadzenie rejestru pól, krów, zadań oraz kalendarza rocznego.

<img src="images/main.png" alt="Widok główny" width="300"/>

## Funkcje aplikacji

### 1. Kalendarz roczny
- Wyświetla miesiące i dni w roku.
- Oznacza specjalne dni związane z pracami rolniczymi.
- Zawiera legendę opisującą znaczenie kolorów.
<img src="images/calendar.png" alt="Widok kalendarza rocznego" width="300"/>
<img src="images/legend.png" alt="Widok legendy" width="300"/>

### 2. Spis pól
- Pozwala na dodawanie pól z kategoriami, historią i rysowaniem granic na mapie.
- Filtruje pola według kategorii.
- Zapisuje dane w `UserDefaults`.
<img src="images/fields.png" alt="Widok spisu pól" width="300"/>
<img src="images/filter_fileds.png" alt="Widok filtracji pól" width="300"/>
<img src="images/add_filed.png" alt="Widok dodawania pola" width="300"/>
<img src="images/field_info.png" alt="Widok pola" width="300"/>

### 3. Spis krów
- Umożliwia dodawanie krów z numerem identyfikacyjnym, datą urodzenia, rasą, laktacją oraz wydarzeniami.
- Obsługuje dodawanie i usuwanie wydarzeń związanych z krowami.
- Zapisuje dane w `UserDefaults`.
<img src="images/cows.png" alt="Widok spisu krów" width="300"/>
<img src="images/cow_info.png" alt="Widok krowy" width="300"/>
<img src="images/add_cow.png" alt="Widok dodawania krowy" width="300"/>

### 4. Lista zadań
- Pozwala na dodawanie, usuwanie i zarządzanie zadaniami.
- Zapisuje dane w `UserDefaults`.
<img src="images/add_task.png" alt="Widok dodawania zadania" width="300"/>
<img src="images/delete_task.png" alt="Widok usuwania zadania" width="300"/>

### 5. Pogoda
- Pobiera aktualne dane pogodowe dla Poznania z API WeatherAPI.

## Struktura projektu

### Pliki Swift:
- **YearCalender.swift**: Obsługuje kalendarz roczny.
- **Fields.swift**: Zarządza spisem pól.
- **Cows.swift**: Obsługuje spis krów i ich wydarzenia.
- **ContentView.swift**: Główna widok aplikacji, integruje wszystkie funkcje.
- **WeatherService.swift**: Obsługuje pobieranie danych pogodowych.
- **SpecialDays.swift**: Definiuje specjalne dni w kalendarzu.

### Technologie:
- SwiftUI
- MapKit
- UserDefaults
- WeatherAPI
