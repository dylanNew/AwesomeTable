//
//  FeatureTipView.swift
//  AwesomeTable
//
//  Created by Dylan Wang on 2018/4/10.
//

import UIKit

/*
protocol FeatureTipProtocol {
    func showLoading()
    func show(err: String, callback: (()->())?)
    func removeTipView()
}

extension FeatureTipProtocol where Self: UIViewController {
    private var _contentView: UIView {
        if let view = self.view.viewWithTag(tipTag) {
            return view
        }
        let view = UIView()
        view.tag = tipTag
        view.backgroundColor = UIColorRGB(0xEBEBEB)
        return view
    }
    
    func showLoading() {
        let contentView = _contentView
        contentView.subviews.forEach { (v) in
            v.removeFromSuperview()
        }
        let loadingView = PKHUDProgressView()
        loadingView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        loadingView.shapeLayer.strokeColor = UIColorRGB(0x00B1F8).cgColor
        contentView.addSubview(loadingView)
        self.view.addSubview(contentView)
        contentView.snp.remakeConstraints { make in
            make.edges.equalToSuperview()
        }
        loadingView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(50)
        }
        loadingView.startAnimation()
    }
    
    func show(err: String, callback: (()->())?) {
        let contentView = _contentView
        contentView.subviews.forEach { (v) in
            v.removeFromSuperview()
        }
        let tipView = _AccountFeatureTipView()
        tipView.callback = callback
        tipView.fill(tip: err)
        contentView.addSubview(tipView)
        self.view.addSubview(contentView)
        contentView.snp.remakeConstraints { make in
            make.edges.equalToSuperview()
        }
        tipView.snp.makeConstraints { make in
            make.centerY.left.right.equalToSuperview()
        }
    }
    
    func removeTipView() {
        if let view = self.view.viewWithTag(tipTag) {
            view.removeFromSuperview()
        }
    }
}

private class _AccountFeatureTipView: UIView {
    var callback: (()->())?
    
    private let messageLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.lightGray
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .center
        return label
    }()
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("刷新", for: .normal)
        button.setTitleColor(UIColorRGB(0x00B1F8), for: .normal)
        button.hitTestEdgeInsets = UIEdgeInsets(top: -10, left: -10, bottom: -10, right: -10)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(messageLabel)
        addSubview(button)
        button.addTarget(self, action: #selector(onClick), for: UIControlEvents.touchUpInside)
        messageLabel.snp.makeConstraints { make in
            make.top.centerX.equalToSuperview()
            make.left.equalTo(10)
            make.right.equalTo(-10)
        }
        button.snp.makeConstraints { make in
            make.top.equalTo(messageLabel.snp.bottom).offset(46)
            make.centerX.bottom.equalToSuperview()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func onClick() {
        if let callback = callback {
            callback()
        }
    }
    
    func fill(tip: String) {
        messageLabel.text = tip
    }
}
*/
