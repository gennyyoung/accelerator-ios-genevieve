////
////  GitServiceImpl.swift
////  Credera-iOS
////
////  Created by Fernando Berrios on 8/13/19.
////  Copyright © 2019 Credera. All rights reserved.
////
//
//import Foundation
////import Promises
//
//class GitServiceImpl: GitService {
//    
//    private let gitHubApi: GitHubApiV3
//    
//    init(gitHubApi: GitHubApiV3) {
//        self.gitHubApi = gitHubApi
//    }
//    
//    func getPublicRepos(username: String) -> Promise<[GitRepo]> {
//        return gitHubApi.getPublicRepos(username: username).then { response in
//            response.map { repo in
//                GitRepo(
//                    name: repo.name,
//                    description: repo.description ?? "",
//                    url: repo.url
//                )
//            }
//        }
//    }
//    
//    func getCommits(owner: String, repo: String) -> Promise<[GitCommit]> {
//        return gitHubApi.getCommits(owner: owner, repo: repo).then { response in
//            response.map { commit in
//                GitCommit(
//                    url: commit.url,
//                    sha: commit.sha,
//                    message: commit.message ?? ""
//                )
//            }
//        }
//    }
//}
