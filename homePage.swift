import SwiftUI

struct homePage: View {
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("lightOcean"), Color("sand")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ScrollView{
                VStack{
                    Text("Updates")
                        .font(.largeTitle)
                        .edgesIgnoringSafeArea(.all)
                    update(img: "bkg", txt: "@oceanlover27 scheduled a beach cleaning at Malibu Beach on May 3, 2021 at 1 pm. Sign up now!")
                    cleanUp()
                    update(img: "puff", txt: "@puffy1739 commented: Just got a bunch of community service hours for Zuma beach. Scheduling one of my own please sign up asap! ")
                    cleanUp()
                    update(img: "seal", txt: "@seally scheduled a seminar about efficient beach cleanings on May 23, 2021 at 4 pm. Sign up now!")
                    cleanUp()
                    update(img: "dolph", txt:"@dolphy953 has invited you to sign up for their beach cleaning at Redondo Beach on Monday, April 26, 2021 at 4 pm. Sign up now to let them know you're coming!")
                    cleanUp()

                    
                    }
                    
                }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
    


}


struct homePage_Previews: PreviewProvider {
    static var previews: some View {
        homePage()
    }
}


struct cleanUp: View {
    var body: some View {
        VStack{
            Text("Sign Up")
                .foregroundColor(.white)
                .frame(width: 120, height: 60)
                .background(LinearGradient(gradient: Gradient(colors: [Color("newOrange"), (Color.gray)]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                .cornerRadius(10)
                .font(.system(size: 20, weight: .medium))
                .cornerRadius(15.0)
                .padding(.leading, 100)
                .padding(.top, -80)
            
        }
    }
}

struct update: View {
    var img : String
    var txt : String
    var body: some View {
        HStack{
            Image(img)
                .resizable()
                .frame(width: 120, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.leading, 10)
            Text(txt)
                .padding(.top, -80)
        }
    }
}
