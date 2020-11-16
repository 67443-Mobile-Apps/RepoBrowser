// Created for RepoBrowser on 11/16/20 
// Using Swift 5.0 
// Running on macOS 11.0
// Qapla'
//

import SwiftUI

struct AppView: View {
  var body: some View {
    
    TabView {

      RepoListView()
      .tabItem {
          Image("swift_icon")
          Text("Swift")
      }

      RepoListView()
      .tabItem {
          Image("ruby_icon")
          Text("Ruby")
      }
      
      RepoListView()
      .tabItem {
          Image("python_icon")
          Text("Python")
      }
      
//      RepoListView()
//      .tabItem {
//          Image("kotlin_icon")
//          Text("Kotlin")
//      }
      
    }
  }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
