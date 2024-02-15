//
//  QRView.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 2/12/24.
//

import Foundation
import SwiftUI
import CodeScanner

struct QRView: View {
    @State private var scannedCode: String?

    var body: some View {
        NavigationView {
            VStack {
                if let scannedCode = scannedCode {
                    Text("Scanned code: \(scannedCode)")
                        .padding()
                } else {
                    CodeScannerView(codeTypes: [.qr], simulatedData: "Your simulated data here") { result in
                        switch result {
                        case .success(let code):
                            //self.scannedCode = code
                            print("Scanning succeeded")
                        case .failure(let error):
                            print("Scanning failed with error: \(error)")
                        }
                    }
                }
            }
        }
    }
}

struct QRView_Previews: PreviewProvider {
    static var previews: some View {
        QRView()
    }
}
