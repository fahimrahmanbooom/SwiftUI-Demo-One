//
//  ContentView.swift
//  SwiftUI Demo One
//
//  Created by Fahim Rahman on 10/7/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import SwiftUI
import AVFoundation

// main content view
struct ContentView: View {
    
    @State private var appleImage = Image("apple")
    @State private var burgerImage = Image("burger")
    @State private var lemonImage = Image("lemon")
    @State private var soupImage = Image("soup")
    @State private var mangoImage = Image("mango")
    @State private var strawberryImage = Image("strawberry")
    @State private var bananasImage = Image("bananas")
    @State private var pineappleImage = Image("pineapple")
    @State private var pizzaImage = Image("pizza")
    
    let systemSoundID: SystemSoundID = 1057
    
    var body: some View {
        
        ZStack {
            
            Color.white.edgesIgnoringSafeArea(.all)
            
            // main stack on top of zstack
            VStack {
                
                // top stack
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            AudioServicesPlaySystemSound (self.systemSoundID)
                        }) {
                            VStack {
                                appleImage.renderingMode(.original)
                                Text("Apple").foregroundColor(.black)
                            }
                        }
                        Spacer()
                        
                        Button(action: {
                            AudioServicesPlaySystemSound (self.systemSoundID)
                        }) {
                            VStack {
                                burgerImage.renderingMode(.original)
                                Text("Burger").foregroundColor(.black)
                            }
                        }
                        Spacer()
                        
                        Button(action: {
                            AudioServicesPlaySystemSound (self.systemSoundID)
                        }) {
                            VStack {
                                lemonImage.renderingMode(.original)
                                Text("Lemon").foregroundColor(.black)
                            }
                        }
                        Spacer()
                    }
                    Spacer()
                }
                
                // middle stack
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            AudioServicesPlaySystemSound (self.systemSoundID)
                        }) {
                            VStack {
                                soupImage.renderingMode(.original)
                                Text("Soup").foregroundColor(.black)
                            }
                        }
                        Spacer()
                        
                        Button(action: {
                            AudioServicesPlaySystemSound (self.systemSoundID)
                        }) {
                            VStack {
                                mangoImage.renderingMode(.original)
                                Text("Mango").foregroundColor(.black)
                            }
                        }
                        Spacer()
                        
                        Button(action: {
                            AudioServicesPlaySystemSound (self.systemSoundID)
                        }) {
                            VStack {
                                strawberryImage.renderingMode(.original)
                                Text("Strawberry").foregroundColor(.black)
                            }
                        }
                        Spacer()
                    }
                    Spacer()
                }
                
                // bottom stack
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            AudioServicesPlaySystemSound (self.systemSoundID)
                        }) {
                            VStack {
                                bananasImage.renderingMode(.original)
                                Text("Bananas").foregroundColor(.black)
                            }
                        }
                        Spacer()
                        
                        Button(action: {
                            AudioServicesPlaySystemSound (self.systemSoundID)
                        }) {
                            VStack {
                                pineappleImage.renderingMode(.original)
                                Text("Pineapple").foregroundColor(.black)
                            }
                        }
                        Spacer()
                        
                        Button(action: {
                            AudioServicesPlaySystemSound (self.systemSoundID)
                        }) {
                            VStack {
                                pizzaImage.renderingMode(.original)
                                Text("Pizza").foregroundColor(.black)
                            }
                        }
                        Spacer()
                    }
                    Spacer()
                }
            }
        }
    }
}



// changing status bar icon color

class HostingController: UIHostingController<ContentView> {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
}


// this is for live preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
