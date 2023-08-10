//
//  ContentView.swift
//  aboutMeApp
//
//  Created by scholar on 8/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var funFact = false
    var body: some View {
        ZStack {
            Color("pink")
                .ignoresSafeArea()
            VStack {
                Text("Alissa Rogozin")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Text("Hi! I'm a rising freshmen at Northeastern University from Brookline. I love to dance, watch Netflix (current obsession is Suits, and spending time with friends and family. I'm really interested in UI/UX Design and am majoring in CS & Design.")
                    .multilineTextAlignment(.center)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
                    .frame(height: 30.0)
                Image("baby pic")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(width: 300.0, height: 300.0)
                    
                Button(action: {funFact.toggle()})
                {
                    Text("Click here for a fun fact about me!")
                
                }
                .buttonStyle(.borderedProminent)
                .font(.title2)
                if funFact{
                    Text("When I was younger I used to be afraid of sand because I thought all sand was quick sand. I had to be carried at the beach at all times. 💅")
                        .multilineTextAlignment(.center)
                        .padding(.all)
                }
            }

        }
        .foregroundColor(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
