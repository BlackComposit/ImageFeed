//
//  SingleImageViewController.swift
//  ImageFeed
//
//  Created by Дмитрий Ивашинин on 21.02.2024.
//

import UIKit

class SingleImageViewController: UIViewController {
    var image: UIImage! {
          didSet {
              guard isViewLoaded else { return }
              singleImageView.image = image
          }
      }
      
    
    @IBOutlet private var singleImageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        scrollView.minimumZoomScale = 1
        scrollView.maximumZoomScale = 3
        singleImageView.image = image
        let doubleTapRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(handleDoubleTap)
        )
        doubleTapRecognizer.numberOfTapsRequired = 2
        scrollView.addGestureRecognizer(doubleTapRecognizer)
    }
    
    @IBAction private func didTapBackButton() {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func didTapShareButton(_ sender: UIButton) {
        let share = UIActivityViewController(
            activityItems: [image as Any],
            applicationActivities: nil
        )
        present(share, animated: true, completion: nil)
    }
    
    @objc
    private func handleDoubleTap() {
        scrollView.setZoomScale(1, animated: true)
    }
}



extension SingleImageViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        singleImageView
    }
    
    func scrollViewDidEndZooming(
        _ scrollView: UIScrollView,
        with view: UIView?,
        atScale scale: CGFloat
    ) {
        guard scale != 1.0 else {
            return
        }
        scrollView.setZoomScale(1, animated: true)
    }
}
