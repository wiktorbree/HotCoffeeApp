# HotCoffeeApp 

A SwiftUI-based iOS application for managing coffee orders with Core Data persistence.

<img width="3364" height="2242" alt="HotCoffeeApp" src="https://github.com/user-attachments/assets/52e3919e-3fd6-43e6-bfb3-eefd2e096ddd" />

## Features

- **Order Management**: Create, view, and delete coffee orders
- **Coffee Types**: Support for Cappuccino, Regular, and Espresso
- **Persistent Storage**: Uses Core Data for local data persistence
- **Modern UI**: Built with SwiftUI for a native iOS experience
- **MVVM Architecture**: Clean separation of concerns with ViewModels

## Architecture

The app follows the **MVVM (Model-View-ViewModel)** pattern:

- **Views**: SwiftUI views for the user interface
- **ViewModels**: Business logic and data binding
- **Models**: Core Data entities for data persistence
- **Managers**: Core Data management and persistence logic

## Project Structure

```
HotCoffeeApp/
├── Views/
│   ├── ContentView.swift          # Main order list view
│   └── AddOrderView.swift         # Add new order form
├── ViewModels/
│   ├── OrderListViewModel.swift   # Manages order list data
│   └── AddOrderViewModel.swift    # Handles new order creation
├── Managers/
│   └── CoreDataManager.swift      # Core Data operations
├── Extensions/
│   └── NSManagedObjectContext+Extension.swift
├── Assets.xcassets/               # App icons and images
└── HotCoffeeApp.xcdatamodeld/     # Core Data model
```

## Getting Started

### Prerequisites

- Xcode 15.0 or later
- iOS 17.0 or later
- macOS 14.0 or later (for development)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/HotCoffeeApp.git
   ```

2. Open the project in Xcode:
   ```bash
   cd HotCoffeeApp
   open HotCoffeeApp.xcodeproj
   ```

3. Build and run the project on your iOS device or simulator.

## Usage

### Adding a New Order

1. Tap the "Add New Order" button in the navigation bar
2. Enter the customer's name
3. Select the coffee type (Cappuccino, Regular, or Espresso)
4. Tap "Place Order" to save

### Managing Orders

- View all orders in the main list
- Swipe left on any order to delete it
- Orders are automatically saved to Core Data

## Technical Details

### Core Data Integration

The app uses Core Data for persistent storage with the following features:

- **Order Entity**: Stores customer name and coffee type
- **CRUD Operations**: Create, read, update, and delete orders
- **Error Handling**: Comprehensive error handling for data operations

### SwiftUI Features

- **NavigationStack**: Modern navigation implementation
- **ObservableObject**: Reactive data binding
- **@State and @Binding**: State management
- **List and ForEach**: Dynamic list rendering
- **Sheet Presentation**: Modal views for adding orders

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Built as part of iOS development learning
- Uses Apple's Core Data framework for persistence
- SwiftUI for modern iOS UI development

---

⭐ If you find this project helpful, please give it a star! 
