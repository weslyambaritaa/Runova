import SwiftUI

struct HomeView: View {
    let daysOfWeek = ["S", "M", "T", "W", "T", "F", "S"]
    let currentDay: Int = Calendar.current.component(.weekday, from: Date())
    
    var body: some View {
        
        
        //        ZStack {
        //            Color.gray.opacity(0.1)
        //                .edgesIgnoringSafeArea(.all)
        
        
        VStack (alignment: .leading, spacing: 30){
            Spacer()
            VStack (alignment: .leading){
                Text("Hello, Wesly Ambarita")
                    .bold()
                    .font(.title)
                Text("Wesly Ambarita")
                    .fontWeight(.regular)
                    .font(.title3)
                
            }.padding(.leading)
            
            
            Spacer()
            
            VStack{
                HStack {
                    ForEach(0..<daysOfWeek.count, id: \.self) { index in
                        VStack {
                            Image(systemName: "circle")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(currentDay == (index + 1) % 7 ? .blue : .abuGelap)
                            Text(daysOfWeek[index])
                                .font(.title3)
                                .bold()
                                .foregroundColor(currentDay == (index + 1) % 7 ? .blue : .abuGelap)
                        }
                        if index < daysOfWeek.count - 1 {
                            Spacer()
                        }
                    }
                }.padding(.horizontal)
                
                HStack (spacing:15){
                    VStack (spacing: 15){
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white)
                                .frame(width: 150, height: 100)
                                .shadow(color: Color.gray.opacity(0.7), radius: 5, x: 0, y: 0)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.white, lineWidth: 3)
                                )
                            
                            HStack{
                                Image(systemName: "figure.run")
                                    .resizable()
                                    .frame(width: 30, height: 40)
                                VStack(alignment: .leading){
                                    Text("30 Minutes")
                                        .bold()
                                    Text("Moderate Run")
                                        .font(.caption)
                                        .foregroundColor(.abuGelap)
                                    
                                    Text("4 Sessions/Week")
                                        .font(.caption)
                                        .foregroundColor(.abuGelap)
                                }
                            }
                        }
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white)
                                .frame(width: 150, height: 100)
                                .shadow(color: Color.gray.opacity(0.7), radius: 5, x: 0, y: 0)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.white, lineWidth: 3)
                                )
                            
                            HStack{
                                Image(systemName: "fork.knife")
                                    .resizable()
                                    .frame(width: 30, height: 40)
                                VStack(alignment: .leading){
                                    Text("2100 cal")
                                        .bold()
                                    Text("Recommended ")
                                        .font(.caption)
                                        .foregroundColor(.abuGelap)
                                    
                                    Text("Calorie Intake")
                                        .font(.caption)
                                        .foregroundColor(.abuGelap)
                                }
                            }
                        }
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                            .frame(width: 200, height: 215)
                            .shadow(color: Color.gray.opacity(0.7), radius: 5, x: 0, y: 0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.white, lineWidth: 3)
                            )
                        VStack{
                            HStack{
                                Image(systemName: "chart.bar.fill")
                                    .resizable()
                                    .frame(width: 30, height: 40)
                                
                                VStack(alignment: .leading){
                                    Text("40 Sessions")
                                        .bold()
                                        .font(.title2)
                                    Text("0/40 Session Completed ")
                                        .font(.caption)
                                        .foregroundColor(.abuGelap)
                                    
                                    
                                }
                                
                            }
                            Image(systemName: "square")
                                .resizable()
                                .cornerRadius(25)
                                .frame(width: 170, height: 50)
                                .foregroundColor(.orangeJalur)
                        }
                    }
                }
            }
            //                Spacer()
            
            ZStack{
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                            .frame(width: 365, height: 130)
                            .shadow(color: Color.gray.opacity(0.7), radius: 5, x: 0, y: 0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.white, lineWidth: 3)
                            )
                        
                        HStack{
                            VStack(alignment: .leading){
                                Text("0 cal burned")
                                    .font(.body)
                                Text("Session 1")
                                    .bold()
                                    .font(.title2)
                                Text("Week 1")
                                    .bold()
                                    .font(.title2)
                                Text("0 minute running")
                                    .font(.body)
                            }.padding()
                            
                            Divider()
                                .frame(height: 110)
                                .background(Color.gray)
                                .padding(.horizontal)
                            
                            
                            Spacer()
                            
                            Button(action: {
                                
                            }) {
                                Text("DONE")
                                    .frame(width:80, height: 50)
                                    .font(.title3)
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.blue)
                                    .clipShape(Rectangle())
                                    .cornerRadius(20)
                                    .padding(.horizontal)
                            }
                            Spacer()
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
            
            //        }
            Button(action: {
                
            }) {
                HStack {
                    Spacer()
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(width: 100, height: 40)
                            .shadow(color: Color.gray.opacity(0.7), radius: 5, x: 0, y: 0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 3)
                            )
                        Label{
                            Text("History")
                                .font(.headline)
                                .foregroundColor(.black)
                        } icon: {
                            Image(systemName: "calendar")
                                .foregroundColor(.black)
                        } .padding(.horizontal, 20)
                    }
                }.padding(.horizontal, 10)
            }
            Spacer()
            Spacer()
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

