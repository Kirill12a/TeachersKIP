//
//  ScheduleViewController.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 07.04.2022.
//

import UIKit
import SnapKit
import SDWebImage
import SDWebImagePDFCoder



class ScheduleViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .red

    var scheduleImage: UIImageView = {
      var imageShedule = UIImageView()
      imageShedule.sd_setImage(with: URL(string: "https://github.com/Kirill12a/Site/files/8455237/default.pdf"), placeholderImage: UIImage(systemName: "message.and.waveform.fill"))
      return imageShedule
    }()


    view.addSubview(scheduleImage)
    scheduleImage.snp.makeConstraints { make in
      make.width.height.equalTo(250)
      make.center.equalToSuperview()
    }
  }
}
