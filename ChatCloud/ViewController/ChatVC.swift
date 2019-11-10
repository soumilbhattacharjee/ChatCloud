//
//  ChatTableVC.swift
//  ChatCloud
//
//  Created by Soumil on 09/11/19.
//  Copyright © 2019 Soumil. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var chatTxtView: UITextView!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        prepareUI()
        // Show saved data in chat box
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Store Temp Text
    }

    @IBAction func sendButtonAction(_ sender: UIButton) {
    }

    /** Description: Preparing the UI
     - Parameters: No Parameter
     - Returns: No Parameter
     */
    func prepareUI() {
        chatTxtView.delegate = self
        chatTxtView.text = "Type here..."
        chatTxtView.textColor = .gray
        tableView.tableFooterView = UIView()
        sendButton.layer.cornerRadius = sendButton.frame.width/2
    }
    
    /** Description: Preparing the UI
     - Parameter Keys: No Parameter
     - Returns: No Parameter
     */
    func prepareChatTxtView() {
        chatTxtView.layer.cornerRadius = 8
    }
    
}

extension ChatVC: UITableViewDelegate, UITableViewDataSource {
    // MARK: - Table view data source

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        return cell
    }
}

extension ChatVC: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        chatTxtView.text = ""
        chatTxtView.textColor = .black
    }

    func textViewDidEndEditing(_ textView: UITextView) {
        // Store Temp Text
    }
}
