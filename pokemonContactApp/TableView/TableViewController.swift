//
//  tableView.swift
//  pokemonContactApp
//
//  Created by 이정은 on 9/26/25.
//

import UIKit
import SnapKit

class TableViewController: UIViewController {
    
    var tableView = UITableView()
    
    // 테이블 뷰에 보여줄 실제 데이터
    var contacts: [ContactData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        setConstraints()
        
        // cell을 table View에 등록
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "tableViewCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        contacts = ContactStorage.shared.fetchContacts().sorted { $0.name < $1.name }
        tableView.reloadData()
    }
    
    func configureUI() {
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
    }
    
    func setConstraints() {
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
}


extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // cell을 dequeueReusableCell 을 활용해 가져와야 함
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        
        // 해당 행에 데이터 가져오고 넣기
        let contact = contacts[indexPath.row]
        cell.configure(contact: contact)
        return cell
    }
    
    // cell 높이 지정
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
