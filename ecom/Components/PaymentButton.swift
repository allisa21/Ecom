//
//  PaymentButton.swift
//  ecom
//
//  Created by Алла alla2104 on 11.09.24.
//

import SwiftUI
import PassKit

struct PaymentButton: View {
    var action:  () -> Void
    var body: some View {
        Representable(action: action)
    }
}

#Preview {
    PaymentButton(action: {})
        .frame(minWidth: 100, maxHeight: 400)
        .frame(height: 45)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
}

extension PaymentButton {
    struct Representable: UIViewRepresentable {
        var action: () -> Void
        
        func makeCoordinator() -> Coordinator {
            Coordinator(action: action)
        }
        
        func makeUIView(context: Context) -> some UIView {
            context.coordinator.button
        }
        
        func updateUIView(_ uiView: UIViewType, context: Context) {
            context.coordinator.action = action
        }
    }
    
    
    class Coordinator: NSObject {
        var action: () -> Void
        var button = PKPaymentButton(paymentButtonType: PKPaymentButtonType.continue, paymentButtonStyle: .automatic)
        
        init(action: @escaping () -> Void) {
            self.action = action
            super.init()
            
            button.addTarget(self, action: #selector(callback(_:)), for: .touchUpInside)
        }
        @objc
        func callback(_ sender: Any) {
            action()
        }
    }
}
