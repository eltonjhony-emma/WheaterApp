//
//  ContentView.swift
//  Shared
//
//  Created by Elton Jhony Romao de Oliveira on 10/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack {
                
                Text("Cupertino, CA")
                    .font(.medium(of: 32))
                    .foregroundColor(.body)
                    .padding()
                
                MainWheaterStatusView(
                    imageName: isNight ? "moon.stars.fill": "cloud.sun.fill",
                    temperature: 76
                )
                .padding(.bottom, 40)
                
                HStack(spacing: 16) {
                    
                    WheaterDayView(
                        dayOfWeek: "TUE",
                        imageName: "cloud.sun.fill",
                        temperature: 74)
                    
                    WheaterDayView(
                        dayOfWeek: "WED",
                        imageName: "sun.max.fill",
                        temperature: 88)
                    
                    WheaterDayView(
                        dayOfWeek: "THU",
                        imageName: "wind.snow",
                        temperature: 55)
                    
                    WheaterDayView(
                        dayOfWeek: "FRI",
                        imageName: "sunset.fill",
                        temperature: 60)
                    
                    WheaterDayView(
                        dayOfWeek: "SAT",
                        imageName: "snow",
                        temperature: 25)
                    
                }
                
                Spacer()
                
                Button("Change Day Time") {
                    isNight.toggle()
                }
                .buttonStyle(PrimaryButtonStyle())
                
                Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

private struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [
                                            isNight ? .black : .blue,
                                            isNight ? .gray : Color("AppLightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
    
}

private struct WheaterDayView: View {
    
    let dayOfWeek: String
    let imageName: String
    let temperature: Int
    
    var body: some View {
        VStack {
            
            Text(dayOfWeek)
                .font(.bold(of: 17))
                .foregroundColor(.body)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.bold(of: 17))
                .foregroundColor(.body)
            
        }
    }
}

private struct MainWheaterStatusView: View {
    
    let imageName: String
    let temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.medium(of: 70))
                .foregroundColor(.body)
        }
    }
    
}
