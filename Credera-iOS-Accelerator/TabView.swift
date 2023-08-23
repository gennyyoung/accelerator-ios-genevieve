//
//  TabView.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 8/23/23.
//
import SwiftUI

struct ContentViewTab: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                        .foregroundColor(Constants.ColorScheme.crederaRed)
                    Text("Home")
                        
                }
                .tag(0)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color.red)
                    Text("Search")
                }
                .tag(1)
        }
    }
}

struct HomeView: View {
    var body: some View {
        Text("Home Content Goes Here")
    }
}

struct SearchView: View {
    @State private var isNavigationActive = false
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(destination: SampleTableView()) {
                    Text("Sample Table View")
                        .buttonStyle(RedButtonStyle())
                }
                NavigationLink(destination: SampleCollectionView()) {
                    Text("Sample Collection View")
                        .buttonStyle(RedButtonStyle())
                }

                NavigationLink(destination: SampleScrollView()) {
                    Text("Sample Scroll View")
                        .buttonStyle(RedButtonStyle())
                }

                NavigationLink(destination: SampleStackView()) {
                    Text("Sample Stack View")
                        .buttonStyle(RedButtonStyle())
                }
            }
            .navigationBarTitle("Search")
        }
    }
}

struct ContentView1: View {
    @State private var isNavigationActive = false

    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    // Set the navigation flag to true to trigger navigation
                    isNavigationActive = true
                }) {
                    Text("Navigate to New Screen")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .background(
                    NavigationLink("", destination: SampleTableView(), isActive: $isNavigationActive)
                        .opacity(0)
                )
            }
            .navigationBarTitle("Button Navigation Example")
        }
    }
}

struct ScreenView: View {
    let screenNumber: Int

    var body: some View {
        Text("Screen \(screenNumber)")
            .font(.largeTitle)
            .foregroundColor(.red)
    }
    //UserServiceImpl.init(userApi: <#T##UserApi#>)
}

struct RedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.headline)
            .foregroundColor(.white)
            .padding(10)
            .background(Constants.ColorScheme.crederaRed)
            .cornerRadius(10)
    }
    
}
