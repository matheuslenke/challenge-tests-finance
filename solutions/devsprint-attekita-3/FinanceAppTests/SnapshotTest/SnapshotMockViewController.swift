//
//  SnapshotMockViewController.swift
//  FinanceAppTests
//
//  Created by Matheus Lenke on 18/05/22.
//

import UIKit

final class SnapshotMockViewController: UIViewController {
    
    func configureView(child: UIView) {
        view.addSubview(child)

        child.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            child.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            child.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            child.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
        ])
    }
}
