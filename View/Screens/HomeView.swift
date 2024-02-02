import SwiftUI

struct HomeView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView{
            ZStack {
                backgroundLogin()
                HomeTitle()
                VStack(){
                    
                    
                    SearchTexField(text: $searchText, placeholder: StringConstants.Home.searchPlaceholder).padding(.horizontal,20).padding(.top,72)
                    ScrollView{
                        HStack
                        {
                            Text(StringConstants.Home.liveDoctors)
                                .font(
                                    Font.custom("Rubik", size: 18)
                                        .weight(.heavy)
                                )
                                .foregroundColor(.white)
                            Spacer()
                        }
                        .padding(.top,10)
                        
                        ScrollLiveDoctors()
                        ScrollTopics().padding(.top,30)
                        
                        HStack(){
                            
                            Title(size: 18, title: StringConstants.Home.popularDoctor)
                            Spacer()
                            Button(action: {print("see all")})
                            {
                                Text(StringConstants.Home.seeAll)
                                    .font(
                                        Font.custom("Rubik", size: 12)
                                            .weight(.light)
                                    )
                                    .foregroundColor(.white.opacity(0.65))
                            }
                        }.padding(.top,20)
                        
                        ScrollPopularDoctor()
                        
                        Spacer()
                        
                    }
                    .padding(.horizontal, 20)
                }
                TabBar()
            }
            
        }.navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
