//
//  TunesViewController.swift
//  TuneTalk
//
//  Created by Victoria Nunez on 4/19/23.
//

import UIKit

// TODO: Import Parse Swift


class FeedViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var posts : [Post] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Create a URL for the request (Currently only 50 songs in this)
        // I am not sure how to grab the whole song library yet - Andy
        let url = URL(string: "https://itunes.apple.com/search?term=blackpink&attribute=artistTerm&entity=song&media=music")!

        // Use the URL to instantiate a request
        let request = URLRequest(url: url)

        // Create a URLSession using a shared instance and call its dataTask method
        // The data task method attempts to retrieve the contents of a URL based on the specified URL.
        // When finished, it calls it's completion handler (closure) passing in optional values for data (the data we want to fetch), response (info about the response like status code) and error (if the request was unsuccessful)
        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in

            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }

            // The `JSONSerialization.jsonObject(with: data)` method is a "throwing" function (meaning it can throw an error) so we wrap it in a `do` `catch`
            do {
                // Create a JSON Decoder
                let decoder = JSONDecoder()
                
                // Create a date formatter
                let dateFormatter = DateFormatter()

                // Set a custom date format based on what we see coming back in the JSON
                dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"

                // Set the decoding strategy on the JSON decoder to use our custom date format
                decoder.dateDecodingStrategy = .formatted(dateFormatter)

                // Use the JSON decoder to try and map the data to our custom model.
                // TrackResponse.self is a reference to the type itself, tells the decoder what to map to.
                let response = try decoder.decode(PostAPIResponse.self, from: data)

                // Access the array of tracks from the `results` property
                let posts = response.results
                
                // Execute UI updates on the main thread when calling from a background callback
                DispatchQueue.main.async {

                    // Set the view controller's tracks property as this is the one the table view references
                    self?.posts = posts

                    // Make the table view reload now that we have new data
                    self?.tableView.reloadData()
                }
            }
            catch {
                print("❌ Error parsing JSON: \(error.localizedDescription)")
            }
        }

        // Initiate the network request
        task.resume()
//        tableView.delegate = self
        tableView.dataSource = self
//        tableView.allowsSelection = false
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let indexPath = tableView.indexPathForSelectedRow {

            // Deslect the row at the corresponding index path
            tableView.deselectRow(at: indexPath, animated: true)
        }
//        queryPosts()
    }

//    private func queryPosts() {
//        // TODO: Pt 1 - Query Posts
//
//    }

    @IBAction func onLogOutTapped(_ sender: Any) {
        showConfirmLogoutAlert()
    }

    private func showConfirmLogoutAlert() {
        let alertController = UIAlertController(title: "Log out of your account?", message: nil, preferredStyle: .alert)
        let logOutAction = UIAlertAction(title: "Log out", style: .destructive) { _ in
            NotificationCenter.default.post(name: Notification.Name("logout"), object: nil)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alertController.addAction(logOutAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // TODO: Pt 1 - Pass the selected track to the detail view controller
//
//        // Get the cell that triggered the segue
//        if let cell = sender as? UITableViewCell,
//           // Get the index path of the cell from the table view
//           let indexPath = tableView.indexPath(for: cell),
//           // Get the detail view controller
//           let detailViewController = segue.destination as? DetailViewController {
//
//            // Use the index path to get the associated track
//            let post = posts[indexPath.row]
//
//            // Set the track on the detail view controller
//            detailViewController.post = post
//        }
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as? PostCell else {
            return UITableViewCell()
        }
        cell.configure(with: posts[indexPath.row])
        return cell
    }
}
