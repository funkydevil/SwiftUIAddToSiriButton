//
//  IntentView.swift
//  FindMe
//
//  Created by Kirill Pyulzyu on 28.08.2020.
//  Copyright © 2020 test. All rights reserved.
//

import SwiftUI
import IntentsUI

struct IntentView: View {
    @State var voiceShortcutVC: UIViewController?
    @State var isSheetPresented = false
    
    var body: some View {
        IntentButton(voiceShortcutVC: $voiceShortcutVC, isSheetPresented: $isSheetPresented)
            .sheet(isPresented: $isSheetPresented, content: sheetContent)
    }
    
    @ViewBuilder func sheetContent() -> some View {
        if self.voiceShortcutVC is INUIAddVoiceShortcutViewController  {
            AddVoiceShortcutView(addVoiceShortcutVC: self.voiceShortcutVC as! INUIAddVoiceShortcutViewController)
        }
        else {
            EditVoiceShortcutView(editVoiceShortcutVC: self.voiceShortcutVC as! INUIEditVoiceShortcutViewController)
        }
    }
}

struct IntentView_Previews: PreviewProvider {
    static var previews: some View {
        IntentView()
    }
}
