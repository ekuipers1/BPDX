//
//  SettingsView.swift
//  BPDX
//
//  Created by Erik Kuipers on 12.10.20.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var time: Double = 0
    @State private var animate = false
    @State private var offsetY: CGFloat = 0
    
    var body: some View {
        
        let defaults = UserDefaults.standard
        let img = defaults.string(forKey: "img")
        let colorLight = defaults.string(forKey: "colorLight")
        let colorDark = defaults.string(forKey: "colorDark")
        
        ZStack{
            // MARK: - Swith for demo
            let ColorLight = (colorLight!)
            //            let ColorLight = "ColorRoyalFreshLight"
            let ColorDark = (colorDark!)
            //            let ColorDark = "ColorRoyalFreshDark"
            Image(img!)
                //            Image("RoyalFresh")
                
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.all, 40.0)
                .opacity(0.6)
            
            
            Circle()
                .fill(Color(ColorDark))
                .opacity(0.5)
                .frame(width: 300, height: 300, alignment: .topLeading)
                .offset(x: 100, y: -270) //3
                .animation(Animation.easeInOut(duration: 1.9).delay(1).repeatForever(autoreverses: false))
                .opacity(0.6)
            
            Circle()
                .fill(Color(ColorLight))
                .opacity(0.5)
                .frame(width: 280, height: 280, alignment: .topLeading)
                .offset(x: 100, y: -270) //3
                .animation(Animation.easeInOut(duration: 1.9).delay(1).repeatForever(autoreverses: false))
                .opacity(0.6)
            
            
            Circle()
                .fill(Color(ColorDark))
                .opacity(0.5)
                .frame(width: 300, height: 300, alignment: .topLeading)
                .offset(x: -80, y: -100) //3
                .animation(Animation.easeInOut(duration: 1.9).delay(1).repeatForever(autoreverses: false))
                .opacity(0.6)
            
            
            Circle()
                .fill(Color(ColorLight))
                .opacity(0.5)
                .frame(width: 280, height: 280, alignment: .topLeading)
                .offset(x: -80, y: -100) //3
                .animation(Animation.easeInOut(duration: 1.9).delay(1).repeatForever(autoreverses: false))
                .opacity(0.6)
            
            
            Circle()
                .fill(Color(ColorDark))
                .opacity(0.5)
                .frame(width: 300, height: 300, alignment: .topLeading)
                .offset(x: 60, y: 100) //3
                .animation(Animation.easeInOut(duration: 1.9).delay(1).repeatForever(autoreverses: false))
                .opacity(0.6)
            
            
            Circle()
                .fill(Color(ColorLight))
                .opacity(0.5)
                .frame(width: 280, height: 280, alignment: .topLeading)
                .offset(x: 60, y: 100) //3
                .animation(Animation.easeInOut(duration: 1.9).delay(1).repeatForever(autoreverses: false))
                .opacity(0.6)
            
            Circle()
                .fill(Color(ColorDark))
                .opacity(0.5)
                .frame(width: 500, height: 500, alignment: .topLeading)
                .offset(x: -30, y: 360) //3
                .animation(Animation.easeInOut(duration: 1.9).delay(1).repeatForever(autoreverses: false))
                .opacity(0.6)
            
            Circle()
                .fill(Color(ColorLight))
                .opacity(0.5)
                .frame(width: 480, height: 480, alignment: .topLeading)
                .offset(x: -30, y: 360) //3
                .animation(Animation.easeInOut(duration: 1.9).delay(1).repeatForever(autoreverses: false))
                .opacity(0.6)
            
            VStack(){
                
                Alcohol()
                
                Bitter()
                
                Availabele()
                
                AvailableIn()
                
            }
            .padding(.top, 40.0)
            
        }
    }
}
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

// FIXME: Only show what is available
struct AvailableIn: View {
    // MARK: - Switch for Demo AVAIN
    var body: some View {
        
        let defaults = UserDefaults.standard
        let colorLight = defaults.string(forKey: "colorLight")
        let colorDark = defaults.string(forKey: "colorDark")
        let ColorLight = (colorLight!)
        //                    let ColorLight = "ColorRoyalFreshLight"
        let ColorDark = (colorDark!)
        //                    let ColorDark = "ColorRoyalFreshDark"
        
        VStack(alignment: .leading){
            
            ZStack(){
                
                Text("Availabale in")
                    .font(.system(size: 20))
                    .fontWeight(.black)
                    .multilineTextAlignment(.leading)
                    .padding(.top)
                    .frame(width: 210, height: 40, alignment: .bottomLeading)
                    .shadow(color: Color(ColorDark), radius: 1, x: -1, y: -1)
                
            }.padding(.leading, 25.0)
            
            HStack(){
                
                ZStack(){
                    
                    Image("12")
                        .resizable()
                        .opacity(0.8)
                        .scaledToFit()
                        .shadow(color: Color(ColorLight), radius: 8, x: 8, y: 8)
                        .frame(maxWidth: .infinity)
                    
                    Text("12oz")
                        .font(.footnote)
                        .fontWeight(.thin)
                        .foregroundColor(Color(ColorLight))
                }
                
                ZStack(){
                    Image("192")
                        .resizable()
                        .opacity(0.8)
                        .scaledToFit()
                        .shadow(color: Color(ColorLight), radius: 8, x: 8, y: 8)
                        .frame(maxWidth: .infinity)
                    
                    Text("19.2oz")
                        .font(.footnote)
                        .fontWeight(.thin)
                        .foregroundColor(Color(ColorLight))
                }
                
                ZStack(){
                    Image("bottle12")
                        .resizable()
                        .opacity(0.8)
                        .scaledToFit()
                        .shadow(color: Color(ColorLight), radius: 8, x: 8, y: 8)
                        .frame(maxWidth: .infinity).frame(maxWidth: .infinity)
                    
                    Text("12oz")
                        .font(.footnote)
                        .fontWeight(.thin)
                        .foregroundColor(Color(ColorLight))
                }
                ZStack(){
                    Image("Draft")
                        .resizable()
                        .opacity(0.8)
                        .scaledToFit()
                        .shadow(color: Color(ColorLight), radius: 8, x: 8, y: 8)
                        .frame(maxWidth: .infinity)
                    Text("Draft")
                        .font(.footnote)
                        .fontWeight(.thin)
                        .foregroundColor(Color(ColorLight))
                }
                ZStack(){
                    Image("Glass")
                        .resizable()
                        .opacity(0.8)
                        .scaledToFit()
                        .shadow(color: Color(ColorLight), radius: 8, x: 8, y: 8)
                        .frame(maxWidth: .infinity)
                    
                    Text("Draft")
                        .font(.footnote)
                        .fontWeight(.thin)
                        .foregroundColor(Color(ColorLight))
                }
            }
            .padding(.horizontal, 40.0)
            
        }
        .padding(.horizontal, 60.0)
    }
}

struct Availabele: View {
    // MARK: - Swith for demo AVA
    var body: some View {
        
        let defaults = UserDefaults.standard
        let colorLight = defaults.string(forKey: "colorLight")
        let colorDark = defaults.string(forKey: "colorDark")
        let whenavail = defaults.string(forKey: "when")
        let ColorLight = (colorLight!)
        //                    let ColorLight = "ColorRoyalFreshLight"
        let ColorDark = (colorDark!)
        //                    let ColorDark = "ColorRoyalFreshDark"
        let whenavailText = (whenavail!)
        //        let whenavailText = "Seasonal: Oct - Dec"
        
        VStack(alignment: .leading){
            
            
            Text("Availability")
                .font(.system(size: 20))
                .fontWeight(.black)
                .multilineTextAlignment(.trailing)
                .padding(.top, 80.0)
                .frame(width: 300, height: 40, alignment: .bottomTrailing)
                .shadow(color: Color(ColorDark), radius: 1, x: -1, y: -1)
            
            HStack(alignment: .center){
                
                ZStack(){
                    
                    Image(systemName: "calendar.circle.fill")
                        
                        .font(.system(size: 30))
                        .shadow(color: Color(ColorDark), radius: 8, x: -8, y: -8)
                    
                }
                Text(whenavailText)
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color(ColorDark), radius: 1, x: -2, y: -2)
                
                
            }
            .frame(width: 300, height: 60, alignment: .trailing)
        }
        .padding(.top, 80.0)
        
    }
}

// FIXME: Fix if IBU = 0%
struct Bitter: View {
    
    @State private var isAnimatingBTU = false
    @State private var drop1 = false
    @State private var drop2 = false
    @State private var drop3 = false
    @State private var drop4 = false
    @State private var drop5 = false
    @State private var drop6 = false
    
    
    var body: some View {
        // MARK: - Switch for Demo IBU
        let defaults = UserDefaults.standard
        let colorLight = defaults.string(forKey: "colorLight")
        let colorDark = defaults.string(forKey: "colorDark")
        let ColorLight = (colorLight!)
        //                    let ColorLight = "ColorRoyalFreshLight"
        let ColorDark = (colorDark!)
        //                    let ColorDark = "ColorRoyalFreshDark"
        let realibu = defaults.integer(forKey: "ibu")
        //        let realibu = 65
        
        let bubleCalcIBU: Int = 1
        let ibuNumber: Double = Double((Int(realibu))) * Double(bubleCalcIBU)
        
        
        
        VStack(){
            
            HStack(){
                
                VStack(alignment: .leading){
                    
                    Text("Bitterness ibu")
                        .font(.system(size: 20))
                        .fontWeight(.black)
                        .multilineTextAlignment(.leading)
                        .frame(width: 210, height: 20, alignment: .bottomLeading)
                        .shadow(color: Color(ColorDark), radius: 1, x: -1, y: -1)
                    
                    Text(String(Double(ibuNumber)))
                        .font(.system(size: 70))
                        .fontWeight(.black)
                        .multilineTextAlignment(.leading)
                        .shadow(color: Color(ColorDark), radius: 1, x: -2, y: -2)
                        .frame(width: 200, height: 80, alignment: .bottomLeading)
                }
                .padding(.leading, 45.0)
                
                let newnumberdrop1 = -CGFloat(ibuNumber) + 10// -90
                let newnumberdrop2 = -CGFloat(ibuNumber) + 20// -80
                let newnumberdrop3 = -CGFloat(ibuNumber) + 25 //-75
                let newnumberdrop4 = -CGFloat(ibuNumber) + 20// -80
                let newnumberdrop5 = -CGFloat(ibuNumber) + 30 //-70
                let newnumberdrop6 = -CGFloat(ibuNumber) + 20// -80
                
                ZStack(alignment: .bottom){
                    
                    Capsule()
                        .fill(Color("ColorInfo"))
                        .frame(width: 60, height: 100)
                        .shadow(color: Color(ColorDark), radius: 5, x: 3, y: 3)
                        .padding(.horizontal, 50)
                    Capsule()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color(ColorDark)]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 60, height: self.isAnimatingBTU ? CGFloat(ibuNumber) : 0)
                        .onAppear() {
                            withAnimation(.easeOut(duration: 1.5)) {
                                isAnimatingBTU = true
                            }
                            
                        }
                    
                    Circle()
                        .fill(Color.white)
                        .opacity(0.5)
                        .frame(width: 10, height: 10)
                        .animation(Animation.easeInOut(duration: 1.9).delay(1).repeatForever(autoreverses: false))
                        .offset(x: 0, y: drop1 ? newnumberdrop1 : 0) //3
                        .opacity(0.6)
                        .onAppear { self.drop1.toggle() }
                    
                    Circle()
                        .fill(Color.white)
                        .opacity(0.5)
                        .frame(width: 10, height: 10)
                        
                        .animation(Animation.easeInOut(duration: 0.5).delay(1).repeatForever(autoreverses: false))
                        .offset(x: 15, y: drop4 ? newnumberdrop4 : -5) //3
                        .opacity(0.6)
                        .onAppear { self.drop4.toggle() }
                    
                    Circle()
                        .fill(Color.white)
                        .opacity(0.5)
                        .frame(width: 15, height: 15)
                        
                        .animation(Animation.easeInOut(duration: 2.9).delay(1).repeatForever(autoreverses: false))
                        .offset(x: 10, y: drop2 ? newnumberdrop2 : -5) //3
                        .opacity(0.6)
                        .onAppear { self.drop2.toggle() }
                    
                    Circle()
                        .fill(Color.white)
                        .opacity(0.5)
                        .frame(width: 10, height: 10)
                        
                        .animation(Animation.easeInOut(duration: 1.9).delay(1).repeatForever(autoreverses: false))
                        .offset(x: -20, y: drop6 ? newnumberdrop6 : -15) //3
                        .opacity(0.6)
                        .onAppear { self.drop6.toggle() }
                    
                    
                    Circle()
                        .fill(Color.white)
                        .opacity(0.5)
                        .frame(width: 22, height: 22)
                        
                        .animation(Animation.easeInOut(duration: 3.9).delay(1).repeatForever(autoreverses: false))
                        .offset(x: -10, y: drop3 ? newnumberdrop3 : -5) //3
                        .opacity(0.6)
                        .onAppear { self.drop3.toggle() }
                    
                    
                    
                    Circle()
                        .fill(Color.white)
                        .opacity(0.5)
                        .frame(width: 18, height: 18)
                        
                        .animation(Animation.easeInOut(duration: 0.9).delay(1).repeatForever(autoreverses: false))
                        .offset(x: 17, y: drop5 ? newnumberdrop5 : -10) //3
                        .opacity(0.6)
                        .onAppear { self.drop5.toggle() }
                }
            }
        }
    }
}

// FIXME: Fix if ALC = 0%
struct Alcohol: View {
    
    @State private var isAnimatingALC = false
    @State private var drop1 = false
    @State private var drop2 = false
    @State private var drop3 = false
    @State private var drop4 = false
    @State private var drop5 = false
    @State private var drop6 = false
    
    var body: some View {
        // MARK: - Switch for Demo ALC
        let defaults = UserDefaults.standard
        let colorLight = defaults.string(forKey: "colorLight")
        let colorDark = defaults.string(forKey: "colorDark")
        let ColorLight = (colorLight!)
        //                    let ColorLight = "ColorRoyalFreshLight"
        let ColorDark = (colorDark!)
        //                    let ColorDark = "ColorRoyalFreshDark"
        let realalc = defaults.integer(forKey: "alc")
        //        let realalc = 6.5
        
        let bubleCalc: Int = 10
        let alcNumber: Double = Double((Int(realalc))) * Double(bubleCalc)
        
        HStack(){
            
            let newnumberdrop1 = -CGFloat(alcNumber) + 10// -90
            let newnumberdrop2 = -CGFloat(alcNumber) + 20// -80
            let newnumberdrop3 = -CGFloat(alcNumber) + 25 //-75
            let newnumberdrop4 = -CGFloat(alcNumber) + 20// -80
            let newnumberdrop5 = -CGFloat(alcNumber) + 30 //-70
            let newnumberdrop6 = -CGFloat(alcNumber) + 20// -80
            
            ZStack(alignment: .bottom){
                
                Capsule()
                    .fill(Color("ColorInfo"))
                    .frame(width: 60, height: 150)
                    .shadow(color: Color(ColorDark), radius: 5, x: 3, y: 3)
                    .padding(.horizontal, 50)
                Capsule()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color(ColorDark)]), startPoint: .top, endPoint: .bottom))
                    .frame(width: 60, height: self.isAnimatingALC ? CGFloat(alcNumber)  : 0)
                    .onAppear() {
                        withAnimation(.easeOut(duration: 1.5)) {
                            isAnimatingALC = true
                        }
                    }
                
                Circle()
                    .fill(Color.white)
                    .opacity(0.5)
                    .frame(width: 10, height: 10)
                    
                    .animation(Animation.easeInOut(duration: 1.9).delay(1).repeatForever(autoreverses: false))
                    .offset(x: 0, y: drop1 ? newnumberdrop1 : 0) //3
                    .opacity(0.6)
                    .onAppear { self.drop1.toggle() }
                
                Circle()
                    .fill(Color.white)
                    .opacity(0.5)
                    .frame(width: 10, height: 10)
                    
                    .animation(Animation.easeInOut(duration: 0.9).delay(1).repeatForever(autoreverses: false))
                    .offset(x: 15, y: drop4 ? newnumberdrop4 : -5) //3
                    .opacity(0.6)
                    .onAppear { self.drop4.toggle() }
                
                Circle()
                    .fill(Color.white)
                    .opacity(0.5)
                    .frame(width: 15, height: 15)
                    .animation(Animation.easeInOut(duration: 2.9).delay(1).repeatForever(autoreverses: false))
                    .offset(x: 10, y: drop2 ? newnumberdrop2: -5) //3
                    .opacity(0.6)
                    .onAppear { self.drop2.toggle() }
                
                Circle()
                    .fill(Color.white)
                    .opacity(0.5)
                    .frame(width: 10, height: 10)
                    .animation(Animation.easeInOut(duration: 1.9).delay(1).repeatForever(autoreverses: false))
                    .offset(x: -20, y: drop6 ? newnumberdrop6: -15) //3
                    .opacity(0.6)
                    .onAppear { self.drop6.toggle() }
                
                Circle()
                    .fill(Color.white)
                    .opacity(0.5)
                    .frame(width: 22, height: 22)
                    .animation(Animation.easeInOut(duration: 3.9).delay(1).repeatForever(autoreverses: false))
                    .offset(x: -10, y: drop3 ? newnumberdrop3 : -5)
                    .opacity(0.6)
                    .onAppear { self.drop3.toggle() }
                
                Circle()
                    .fill(Color.white)
                    .opacity(0.5)
                    .frame(width: 18, height: 18)
                    .animation(Animation.easeInOut(duration: 1.9).delay(1).repeatForever(autoreverses: false))
                    .offset(x: 17, y: drop5 ? newnumberdrop5: -10) //3
                    .opacity(0.6)
                    .onAppear { self.drop5.toggle() }
                
            }
            
            VStack(alignment: .leading){
                
                Text("Alcohol %")
                    .font(.system(size: 20))
                    .fontWeight(.black)
                    .multilineTextAlignment(.trailing)
                    .frame(width: 180, height: 20, alignment: .bottomTrailing)
                    .shadow(color: Color(ColorDark), radius: 1, x: -1, y: -1)
                
                Text(String(alcNumber / 10))
                    .font(.system(size: 80))
                    .fontWeight(.black)
                    .multilineTextAlignment(.trailing)
                    .shadow(color: Color(ColorDark), radius: 1, x: -2, y: -2)
                    .frame(width: 190, height: 90, alignment: .bottomTrailing)
            }
            .padding(.trailing, 40.0)
        }
    }
}
