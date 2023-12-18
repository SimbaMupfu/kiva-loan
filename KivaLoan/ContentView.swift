//
//  ContentView.swift
//  KivaLoan
//
//  Created by Simbarashe Mupfururirwa on 2023/12/16.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var loanStore = LoanStore()
    
    var body: some View {
        NavigationStack {
            List(loanStore.loans) { loan in
                LoanCellView(loan: loan)
                    .padding(.vertical, 5)
            }
            .navigationTitle("Kiva Loan")
        }
        .task {
            self.loanStore.fetchLatestLoans()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
