//
//  SampleScrollView.swift
//  Credera-iOS-Accelerator
//
//  Created by Kelly Su on 8/23/23.
//

import Foundation
import SwiftUI

struct SampleScrollView: View {
    var sampleText =
        "Lorem ipsum dolor sit amet, mea et tamquam deleniti, vim zril consequat ad, graeco eloquentiam sed at. Ex his partem quaerendum, duo fastidii partiendo patrioque et. Oportere corrumpit mnesarchum vel te, nonumy evertitur at vel, cibo ceteros atomorum his ad. Purto dicunt voluptua eum ei, in ius aperiri facilis, an usu nibh dissentiet reprehendunt.\n\nVel oratio partiendo omittantur at, dicat atomorum argumentum in eum. Diam ornatus mediocrem mel et, legere indoctum qualisque te vel, invenire honestatis duo ad. Quo cu quodsi apeirian. Et mazim vidisse principes pro, te meis omnesque reprimique est, doming praesent ne pri.\n\nQuidam interpretaris eum at, ut case ridens dissentias duo, timeam virtute vis in. Eu reque fuisset eum. Eum amet vidit ne. Latine corpora cu duo, in constituam omittantur usu. Vix aeterno deleniti detraxit id. Autem quidam at pri, nam ut rebum antiopam, ei duo labores assueverit.\n\nQuo at fugit tation fierent. Ei has everti docendi repudiandae, no gloriatur deseruisse interpretaris quo. Cum denique albucius eu. Tacimates splendide vim id.\n\nAd integre nostrud vim, duo in expetenda repudiare. Ei vis probo persius discere. Case labore copiosae ei est, est idque persius persequeris ei. Ad mel numquam imperdiet repudiare, cu eos tota porro. Eruditi accusamus sit ei, nam probo iudico ne. Inermis admodum accusam qui eu, quas assum an sed, id vis nostro timeam ocurreret.\n\nEst in mazim expetenda. Vim et illud blandit periculis, numquam vituperata eam id. Ei malis appellantur vim. An his esse omittantur, cum ea praesent maiestatis. Ullum dolores et sea, constituto instructior eu nec.\n\nUbique elaboraret vel in. Nostrud bonorum sit an, eos eu aliquip habemus, ex dicat oporteat principes vis. Per dolore graeci expetenda te, qualisque quaerendum eam ea, sed ei pertinax facilisis deterruisset. Ea vis eruditi corrumpit, eam ut falli aliquam. In movet iudico tibique duo. Etiam quaestio cu nam.\n\nVide probo volumus eu qui, mel an feugiat habemus necessitatibus, an tollit voluptua mea. Option honestatis inciderint cum te. Nam ei tritani sapientem. Ut dicant corpora appetere vel, quo everti iriure scripta te. Vis inimicus dignissim ne, suas soleat tacimates id sed. Fabellas gloriatur ne mei."

    var body: some View {
        CustomNavBar(
            title: "Credera iOS Accelerator",
            content:

                ScrollView {

                    Text(sampleText)
                }
                .padding(15), hide: true)

    }
}
