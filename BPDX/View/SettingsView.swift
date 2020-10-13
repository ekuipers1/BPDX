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
        
        ZStack{
            Rectangle()
                .fill(Color("ColorInfo"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            
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

struct AvailableIn: View {
    var body: some View {
        VStack(alignment: .leading){
            
            ZStack(){
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .padding(.horizontal, 20.0)
                    .foregroundColor(Color(""))
                    .frame(width: 340, height: 55,alignment: .center)
                
                Text("Availabale in")
                    .foregroundColor(Color("ColorInfoShadowDark"))
                    .font(.system(size: 20))
                    .fontWeight(.black)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                    .padding(.all, 20.0)
                    .shadow(color: Color("ColorInfoShadowLight"), radius: 8, x: -8, y: -8)
                    .shadow(color: Color("ColorInfoShadowDark"), radius: 8, x: 8, y: 8)
            }
            
            HStack(){
                
                
                Image("12")
                    .resizable()
                    .opacity(0.8)
                    .scaledToFit()
                    .shadow(color: Color("ColorInfoShadowLight"), radius: 8, x: -8, y: -8)
                    .shadow(color: Color("ColorInfoShadowDark"), radius: 8, x: 8, y: 8)
                    .frame(maxWidth: .infinity)
                Image("192")
                    .resizable()
                    .opacity(0.8)
                    .scaledToFit()
                    .shadow(color: Color("ColorInfoShadowLight"), radius: 8, x: -8, y: -8)
                    .shadow(color: Color("ColorInfoShadowDark"), radius: 8, x: 8, y: 8)
                    .frame(maxWidth: .infinity)
                
                Image("bottle12")
                    .resizable()
                    .opacity(0.8)
                    .scaledToFit()
                    .shadow(color: Color("ColorInfoShadowLight"), radius: 8, x: -8, y: -8)
                    .shadow(color: Color("ColorInfoShadowDark"), radius: 8, x: 8, y: 8)
                    .frame(maxWidth: .infinity).frame(maxWidth: .infinity)
                Image("Draft")
                    .resizable()
                    .opacity(0.8)
                    .scaledToFit()
                    .shadow(color: Color("ColorInfoShadowLight"), radius: 8, x: -8, y: -8)
                    .shadow(color: Color("ColorInfoShadowDark"), radius: 8, x: 8, y: 8)
                    .frame(maxWidth: .infinity)
                Image("Glass")
                    .resizable()
                    .opacity(0.8)
                    .scaledToFit()
                    .shadow(color: Color("ColorInfoShadowLight"), radius: 8, x: -8, y: -8)
                    .shadow(color: Color("ColorInfoShadowDark"), radius: 8, x: 8, y: 8)
                    .frame(maxWidth: .infinity)
            }
            
        }
        .padding(.horizontal, 60.0)
    }
}

struct Availabele: View {
    var body: some View {
        
        let defaults = UserDefaults.standard
        let whenavail = defaults.string(forKey: "when")
        //        let whenavail = "Seasonal: Oct - Dec"
        
        VStack(alignment: .leading){
            
            ZStack(){
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .padding(.horizontal, 20.0)
                    .foregroundColor(Color(""))
                    .frame(width: 340, height: 55,alignment: .center)
                
                
                
                Text("Availability")
                    .foregroundColor(Color("ColorInfoShadowDark"))
                    .font(.system(size: 20))
                    .fontWeight(.black)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                    .padding(.vertical, 20.0)
                    .shadow(color: Color("ColorInfoShadowLight"), radius: 8, x: -8, y: -8)
                    .shadow(color: Color("ColorInfoShadowDark"), radius: 8, x: 8, y: 8)
            }
            
            
            ZStack(){
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .padding(.horizontal, 20.0)
                    .foregroundColor(Color(""))
                    .frame(width: 340, height: 55,alignment: .center)
                
                HStack(){
                    
                    ZStack(){
                        
                        Image(systemName: "calendar.circle.fill")
                            
                            .font(.system(size: 30))
                            .foregroundColor(Color("ColorInfoShadowDark"))
                            .shadow(color: Color("ColorInfoShadowLight"), radius: 8, x: -8, y: -8)
                            .shadow(color: Color("ColorInfoShadowDark"), radius: 8, x: 8, y: 8)
                    }
                    
                    //                    Text(whenavail)
                    Text(whenavail!)
                        .foregroundColor(Color("ColorInfoShadowDark"))
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.center)
                        .shadow(color: Color("ColorInfoShadowLight"), radius: 8, x: -8, y: -8)
                        .shadow(color: Color("ColorInfoShadowDark"), radius: 8, x: 8, y: 8)
                    
                }
                
            }
        }
    }
}

struct Bitter: View {
    
    @State private var isAnimatingBTU = false
    @State private var drop1 = false
    @State private var drop2 = false
    @State private var drop3 = false
    @State private var drop4 = false
    @State private var drop5 = false
    @State private var drop6 = false
    
    var body: some View {
        
        let defaults = UserDefaults.standard
        let ibunumber = defaults.integer(forKey: "ibu")
        //        let ibunumber = 65
        
        let bubleCalcIBU: Int = 1
        let ibuNumber: Double = Double((Int(ibunumber))) * Double(bubleCalcIBU)
        
        
        
        VStack(){
            
            HStack(){
                
                let newnumberdrop1 = -CGFloat(ibuNumber) + 10// -90
                let newnumberdrop2 = -CGFloat(ibuNumber) + 20// -80
                let newnumberdrop3 = -CGFloat(ibuNumber) + 25 //-75
                let newnumberdrop4 = -CGFloat(ibuNumber) + 20// -80
                let newnumberdrop5 = -CGFloat(ibuNumber) + 30 //-70
                let newnumberdrop6 = -CGFloat(ibuNumber) + 20// -80
                
                ZStack(alignment: .bottom){
                    
                    Capsule()
                        .fill(Color("ColorInfo"))
                        .frame(width: 60, height: 150)
                        .shadow(color: Color("ColorInfoShadowLight"), radius: 8, x: -8, y: -8)
                        .shadow(color: Color("ColorInfoShadowDark"), radius: 8, x: 8, y: 8)
                        .padding(.horizontal, 50)
                    Capsule()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color.green]), startPoint: .top, endPoint: .bottom))
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
                
                VStack(alignment: .leading){
                    
                    Text("Bitterness")
                        .foregroundColor(Color("ColorInfoShadowDark"))
                        .font(.system(size: 20))
                        .fontWeight(.black)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                        .shadow(color: Color("ColorInfoShadowLight"), radius: 8, x: -8, y: -8)
                        .shadow(color: Color("ColorInfoShadowDark"), radius: 8, x: 8, y: 8)
                    
                    
                    
                    Text(String(Double(ibuNumber)))
                        .foregroundColor(Color("ColorInfoShadowDark"))
                        .font(.system(size: 60))
                        .fontWeight(.black)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.center)
                        .shadow(color: Color("ColorInfoShadowLight"), radius: 8, x: -8, y: -8)
                        .shadow(color: Color("ColorInfoShadowDark"), radius: 8, x: 8, y: 8)
                    
                }
                Text("ibu")
                    .foregroundColor(Color("ColorInfoShadowDark"))
                    .font(.system(size: 20))
                    .fontWeight(.black)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color("ColorInfoShadowLight"), radius: 8, x: -8, y: -8)
                    .shadow(color: Color("ColorInfoShadowDark"), radius: 8, x: 8, y: 8)
            }
            
        }
    }
}

struct Alcohol: View {
    
    @State private var isAnimatingALC = false
    @State private var drop1 = false
    @State private var drop2 = false
    @State private var drop3 = false
    @State private var drop4 = false
    @State private var drop5 = false
    @State private var drop6 = false
    
    var body: some View {
        
        let defaults = UserDefaults.standard
        let alcnumber = defaults.integer(forKey: "alc")
        //        let alcnumber = 6
        
        let bubleCalc: Int = 10
        let alcNumber: Double = Double((Int(alcnumber))) * Double(bubleCalc)
        
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
                    .shadow(color: Color("ColorInfoShadowLight"), radius: 8, x: -8, y: -8)
                    .shadow(color: Color("ColorInfoShadowDark"), radius: 8, x: 8, y: 8)
                    .padding(.horizontal, 50)
                Capsule()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color.yellow]), startPoint: .top, endPoint: .bottom))
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
                
                Text("Alcohol")
                    .foregroundColor(Color("ColorInfoShadowDark"))
                    .font(.system(size: 20))
                    .fontWeight(.black)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                    .shadow(color: Color("ColorInfoShadowLight"), radius: 8, x: -8, y: -8)
                    .shadow(color: Color("ColorInfoShadowDark"), radius: 8, x: 8, y: 8)
                
                Text(String(Double(alcnumber)))
                    .foregroundColor(Color("ColorInfoShadowDark"))
                    .font(.system(size: 90))
                    .fontWeight(.black)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .shadow(color: Color("ColorInfoShadowLight"), radius: 8, x: -8, y: -8)
                    .shadow(color: Color("ColorInfoShadowDark"), radius: 8, x: 8, y: 8)
            }
            Text("%")
                .foregroundColor(Color("ColorInfoShadowDark"))
                .font(.system(size: 20))
                .fontWeight(.black)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
                .shadow(color: Color("ColorInfoShadowLight"), radius: 8, x: -8, y: -8)
                .shadow(color: Color("ColorInfoShadowDark"), radius: 8, x: 8, y: 8)
            
        }
    }
}
