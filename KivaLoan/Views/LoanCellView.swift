//
//  LoanCellView.swift
//  KivaLoan
//
//  Created by Simbarashe Mupfururirwa on 2023/12/16.
//

import SwiftUI

struct LoanCellView: View {
    
    var loan: Loan
    
    var body: some View {
        HStack (alignment: .top) {
            VStack(alignment: .leading) {
                Text(loan.name)
                    .font(.system(.headline, design: .rounded))
                    .bold()
                Text(loan.country)
                    .font(.system(.subheadline, design: .rounded))
                Text(loan.use)
                    .font(.system(.body, design: .rounded))
            }
            
            Spacer()
            
            VStack {
                Text("R\(loan.amount)")
                    .font(.system(.title, design: .rounded))
                    .bold()
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity)
    }
}

struct LoanCellView_Previews: PreviewProvider {
    static var previews: some View {
        LoanCellView(loan: Loan(name: "Simba", country: "Zimbabwe", use: "To buy a plot of land", amount: 30000)).previewLayout(.sizeThatFits)
    }
}
