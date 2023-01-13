//
//  SafariWrapper.swift
//  CatUp
//
//  Created by Mustafa Saeed on 13/01/2023.
//

import Foundation
import SafariServices
import SwiftUI


struct SafariWrapper: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<Self>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariWrapper>) {
        return
    }
}
