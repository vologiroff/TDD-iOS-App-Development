//
//  ImageCommentCellController.swift
//  ApplicationFeediOS
//
//  Created by Kantemir Vologirov on 6.8.24..
//

import UIKit
import ApplicationFeed

public class ImageCommentCellController: NSObject, UITableViewDataSource {
    private let model: ImageCommentViewModel

    public init(model: ImageCommentViewModel) {
        self.model = model
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ImageCommentCell = tableView.dequeueReusableCell()
        cell.messageLabel.text = model.message
        cell.usernameLabel.text = model.username
        cell.dateLabel.text = model.date
        return cell
    }
}
