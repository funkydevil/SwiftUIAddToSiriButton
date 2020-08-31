//
//  ContentView.swift
//  AddToSiriButton
//
//  Created by Kirill Pyulzyu on 30.08.2020.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let testIntent1 = DoSomethingIntent()
        testIntent1.suggestedInvocationPhrase = "Do something"
        
        let testIntent2 = DoSomethingMoreIntent()
        testIntent2.suggestedInvocationPhrase = "Do something more"


        return VStack() {
            IntentView(intent: testIntent1)
            IntentView(intent: testIntent2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
