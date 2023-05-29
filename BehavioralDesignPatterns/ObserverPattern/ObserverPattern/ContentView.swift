//
//  ContentView.swift
//  ObserverPattern
//
//  Created by Jae kwon Choi on 2023/05/29.
//

import SwiftUI

struct ContentView: View {
    
    let appleStore = AppleStore(observers: [])
    let pingu = Customer(id: "Pingu")
    let pinga = Customer(id: "Pinga")
    let roby = Customer(id: "Roby")
    let ick = Customer(id: "Ick")
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    appleStore.subscribe(observer: pingu)
                } label: {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.black)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .overlay {
                            Text("AddPingu")
                                .foregroundColor(Color.white)
                        }
                }
                
                Button {
                    appleStore.subscribe(observer: pinga)
                } label: {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.black)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .overlay {
                            Text("AddPinga")
                                .foregroundColor(Color.white)
                        }
                }
                
                Button {
                    appleStore.subscribe(observer: roby)
                } label: {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.black)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .overlay {
                            Text("AddRoby")
                                .foregroundColor(Color.white)
                        }
                }
                
                Button {
                    appleStore.subscribe(observer: ick)
                } label: {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.black)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .overlay {
                            Text("AddIck")
                                .foregroundColor(Color.white)
                        }
                }
            }
            
            Button {
                appleStore.notify(message: "iPhone 재고 입고!")
            } label: {
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.black)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .overlay {
                        Text("수신")
                            .foregroundColor(Color.white)
                    }
            }
            
            HStack {
                Button {
                    appleStore.unSubscribe(observer: pingu)
                } label: {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.black)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .overlay {
                            Text("UnPingu")
                                .foregroundColor(Color.white)
                        }
                }
                
                Button {
                    appleStore.unSubscribe(observer: pinga)
                } label: {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.black)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .overlay {
                            Text("UnPinga")
                                .foregroundColor(Color.white)
                        }
                }
                
                Button {
                    appleStore.unSubscribe(observer: roby)
                } label: {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.black)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .overlay {
                            Text("UnRoby")
                                .foregroundColor(Color.white)
                        }
                }
                
                Button {
                    appleStore.unSubscribe(observer: ick)
                } label: {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.black)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .overlay {
                            Text("UnIck")
                                .foregroundColor(Color.white)
                        }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
