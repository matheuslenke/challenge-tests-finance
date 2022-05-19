//
//  HomeHeaderViewSnapshotTests.swift
//  FinanceAppTests
//
//  Created by Matheus Lenke on 18/05/22.
//

import XCTest
@testable import FinanceApp
import SnapshotTesting

class HomeHeaderViewSnapshotTests: XCTestCase {
    
    private let isRecord = false
    private var sut: HomeHeaderView!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = HomeHeaderView()
        sut.backgroundColor = .white
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
    }

    func test_HomeHeaderView_AllFields() {
        let configuration = HomeHeaderViewConfiguration(amountLabel: "R$ 50.000,00", savingsLabel: "Savings", savingsValueLabel: "R$100.00", spendingLabel: "Spending", spendingValueLabel: "R$100.00")
        sut.configure(with: configuration)
        
        let mockViewController = SnapshotMockViewController()
        mockViewController.configureView(child: sut)
        
        assertSnapshot(matching: mockViewController, as: .image(on: .iPhoneX), record: isRecord)
    }
    
    func test_HomeHeaderView_shouldShowEmptyLabel() {
        let configuration = HomeHeaderViewConfiguration(amountLabel: String(),
                                                        savingsLabel: "Savings",
                                                        savingsValueLabel: "R$ 200,00",
                                                        spendingLabel: "Spending",
                                                        spendingValueLabel: "R$ 200,00")

        sut.configure(with: configuration)
        
        let mockViewController = SnapshotMockViewController()
        mockViewController.configureView(child: sut)

        assertSnapshot(matching: mockViewController, as: .image(on: .iPhoneX), record: isRecord)
    }
}
