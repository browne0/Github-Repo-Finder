//
//  GithubCell.swift
//  GithubDemo
//
//  Created by Malik Browne on 2/4/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class GithubCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var repoImageView: UIImageView!
    @IBOutlet weak var starImageView: UIImageView!
    @IBOutlet weak var starCount: UILabel!
    @IBOutlet weak var forkImageView: UIImageView!
    @IBOutlet weak var forkCount: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var githubRepo: GithubRepo! {
        didSet {
            nameLabel.text = githubRepo.name
            userLabel.text = githubRepo.ownerHandle
            let avatarURL = NSURL(string: githubRepo.ownerAvatarURL!)
            repoImageView.setImageWithURL(avatarURL!)
            starImageView.image = UIImage(named: "star")
            starCount.text = String(githubRepo.stars!)
            forkImageView.image = UIImage(named: "fork")
            forkCount.text = String(githubRepo.forks!)
            descriptionLabel.text = githubRepo.repoDescription
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
