//
//  DetailedView.swift
//  Lab10Zh
//
//  Created by Zhanibek on 18.11.2021.
//

import SwiftUI

struct DetailedView: View {
    var object = objects[0]
    var body: some View {
        
        ZStack(alignment: .top) {
            Color.gray
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(height: 30)
                    
                    HStack {
                        Text("01-11-2021")
                        Spacer()
                        Text("11:45")
                    }
                    .padding(.horizontal)
                }
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(height: 55)
                    
                    HStack {
                        Text("Номер Покупки")
                        Spacer()
                        Text("10918")
                    }
                    .padding(.horizontal)
                }
                
                
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(height: 55)
                    
                    HStack {
                        Text("Местоположение")
                        Spacer()
                        Text("\(object.address)")
                    }
                    .padding(.horizontal)
                }
                
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(height: 55)
                    
                    HStack {
                        Text("Итоговая цена")
                            .foregroundColor(.white)
                        Spacer()
                        Text("\(object.price) T")
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal)
                }
                
                HStack{
                    Image("drink")
                        .resizable()
                        .frame(width: 100, height: 150)
                    
                    VStack(alignment: .leading) {
                        ZStack {
                        Rectangle()
                            .foregroundColor(Color("Color1"))
                            .frame(width: 250, height: 50)
                            .cornerRadius(10)
                            
                            HStack {
                                Text("Название")
                                Spacer()
                                Text("\(object.name)")
                            }
                            
                        }
                        
                        ZStack {
                        Rectangle()
                            .foregroundColor(Color("Color1"))
                            .frame(width: 250, height: 50)
                            .cornerRadius(10)
                            
                            HStack {
                                Text("Количество")
                                Spacer()
                                
                                Text(object.count)
                            }
                            
                        }
                        
                        ZStack {
                        Rectangle()
                            .foregroundColor(Color("Color1"))
                            .frame(width: 250, height: 50)
                            .cornerRadius(10)
                            
                            HStack {
                                Text("цена")
                                    
                                Spacer()
                                Text("200 тг")
                            }
                            
                        }
                        
                        ZStack {
                        Rectangle()
                            .foregroundColor(Color("Color1"))
                            .frame(width: 250, height: 50)
                            .cornerRadius(10)
                            
                            HStack {
                                Text("Сумма")
                                Spacer()
                                
                                Text(object.price)
                            }
                            
                        }
                    }
                    
                    

                
            }
                .padding(15)
                .background(Color(.white))
                .cornerRadius(10)
                
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView()
    }
}
