//
//  HomeViewController.swift
//  SayHello
//
//  Created by Chính Phạm on 6/1/19.
//  Copyright © 2019 Chính Phạm. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

final class HomeViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet private weak var inputTextField: UITextField!
    @IBOutlet private weak var sayHelloButton: UIButton!
    @IBOutlet private weak var outputLabel: UILabel!

    // MARK: - Properties

    private let viewModel = HomeViewModel()
    private let disposeBag = DisposeBag()

    // MARK: - Override

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }

    // MARK: - Private Functions

    private func bindViewModel() {
        let inputs = HomeViewModel.Input(
            name: inputTextField.rx.text.orEmpty.asObservable(),
            validate: sayHelloButton.rx.tap.asObservable())

        // Outputs
        viewModel.transform(input: inputs)
            .greeting
            .drive(outputLabel.rx.text)
            .disposed(by: disposeBag)
    }
}
