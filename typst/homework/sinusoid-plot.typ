/**
 * This is autogenerated Typst markup from a scene description created by
 * matplotlib in Python.
 *
 * Timestamp: 2025-01-31T22:01:37.
 */

#let draw-text(dx: 0pt, dy: 0pt, size: 10pt, alignment: center + horizon, baseline: false, angle: 0deg, body) = style(styles => {
  // In order to align a text properly, we need to configure bounding box of a
  // text.
  let top-edge = "cap-height"
  let bot-edge = "bounds"
  let valign = alignment.y;
  if baseline and valign == bottom {
    bot-edge = "baseline"
  }
  if baseline and valign == horizon {
    bot-edge = "baseline"
  }

  // Measure shape of text block.
  let content = text(size: size, top-edge: top-edge, bottom-edge: bot-edge, body)
  let shape = measure(content, styles)

  // Adjust horizontal position.
  let px = dx
  if alignment.x == left {
    // Do nothing.
  } else if alignment.x == center {
    px -= shape.width / 2
  } else if alignment.x == right {
    px -= shape.width
  }

  // Adjust vertical position.
  let py = dy
  if valign == top {
    // Do nothing.
  } else if valign == horizon {
    py -= shape.height / 2
  } else if valign == bottom {
    py -= shape.height
  }

  // Rotate text block if required. Note, that matplotlib supports two modes
  // for rotation while Typst allows to perform only the second one.
  if angle != 0deg {
    content = rotate(angle, origin: alignment, content)
  }

  // Finaly, place a content block in calculated displacement.
  place(dx: px, dy: py, content)
})

#block(
  {
    place(
      path(
        (0.0in, 4.699999999999999in),
        (6.699999999999998in, 4.699999999999999in),
        (6.699999999999998in, 0.0in),
        (0.0in, 0.0in),
        fill: none,
        stroke: stroke(
          paint: rgb(
            0.0%,
            0.0%,
            0.0%,
            0.0%),
          thickness: 0.0pt,
          cap: "butt",
          join: "miter"),
        closed: true),
      dx: 0in,
      dy: 0in)
    place(
      path(
        (0.7524640721075264in, 3.9170330659373587in),
        (6.6in, 3.9170330659373587in),
        (6.6in, 0.09999999999999964in),
        (0.7524640721075264in, 0.09999999999999964in),
        fill: none,
        stroke: stroke(
          paint: rgb(
            0.0%,
            0.0%,
            0.0%,
            0.0%),
          thickness: 0.0pt,
          cap: "butt",
          join: "miter"),
        closed: true),
      dx: 0in,
      dy: 0in)
    place(
      path(
        (1.0182611597390026in, 3.9170330659373587in),
        (1.0182611597390026in, 3.967033065937359in),
        fill: rgb(
          0.0%,
          0.0%,
          0.0%,
          100.0%),
        stroke: stroke(
          paint: rgb(
            0.0%,
            0.0%,
            0.0%,
            100.0%),
          thickness: 0.67pt,
          cap: "butt",
          join: "round")),
      dx: 0in,
      dy: 0in)
    place(
      path(
        (1.0396337408313903in, 4.542736828229858in),
        ((1.0348178161738562in, 4.515312326361863in), (0.00481592465753411in, 0.020577132627646044in), (0.004710849937733519in, 0.008948863636363491in)),
        ((1.018233522898638in, 4.504682267208687in), (0.012433841843088489in, 0.002784480074719653in), (0.005814134495641499in, 0.0in)),
        ((1.0017543043432209in, 4.515207251642062in), (0.011085382938978983in, -0.010524984433375018in), (0.004255526151930367in, -0.008073240971357087in)),
        ((0.9968157925125859in, 4.542736828229858in), (0.00045532378580315225in, -0.019141111457035898in), (0.0in, -0.00873871419676231in)),
        ((1.0004058454391114in, 4.567359337569833in), (-0.0035900529265254777in, -0.018247976338729543in), (-0.0034674657534247144in, -0.008528564757161128in)),
        ((1.018233522898638in, 4.580441140185026in), (-0.013011752801992404in, -0.001558608343710688in), (-0.00437811332503113in, 0.0in)),
        ((1.0358160260119633in, 4.567692074182535in), (-0.012433841843088489in, 0.012749066002490927in), (-0.004588262764632756in, 0.010630059153175608in)),
        ((1.0396337408313903in, 4.542736828229858in), (-0.00045532378580315225in, 0.017214741594022698in), (0.0in, 0.008160803237858616in)),
        (1.018233522898638in, 4.578654869948413in),
        ((1.0052217700966457in, 4.563979434082909in), (0.005831646948941227in, 0.014675435865504127in), (0.0015761207970110824in, 0.00852856475716024in)),
        ((1.0039958983656367in, 4.541493444045549in), (0.0in, 0.015901307596513092in), (0.0in, 0.006269458281444429in)),
        ((1.0054494319895473in, 4.518884866835088in), (-0.0014535336239105412in, 0.013992450186799843in), (-0.0014535336239105412in, 0.00682985678704906in)),
        ((1.018233522898638in, 4.5064685374453in), (-0.010647571606475559in, 0.002924579701121033in), (-0.00437811332503113in, 0.0in)),
        ((1.0308950266346282in, 4.518657204942187in), (-0.008073240971357531in, -0.012188667496887184in), (-0.0021365193026150475in, -0.00915901307596556in)),
        ((1.0324536349783393in, 4.541493444045549in), (-0.00010507471980081284in, -0.016461706102116835in), (0.0in, -0.008948863636363491in)),
        ((1.0311226885275298in, 4.5643296831489115in), (0.0013309464508095559in, -0.015551058530510531in), (0.0013309464508095559in, -0.00660219489414704in)),
        ((1.018233522898638in, 4.578654869948413in), (0.010524984433375018in, -0.002119006849315319in), (0.003922789539227978in, 0.0in)),
        fill: rgb(
          0.0%,
          0.0%,
          0.0%,
          100.0%),
        stroke: stroke(
          paint: rgb(
            0.0%,
            0.0%,
            0.0%,
            100.0%),
          thickness: 0.0pt,
          cap: "butt",
          join: "round"),
        closed: true),
      dx: 0in,
      dy: 0in)
    place(
      path(
        (6.334734559708521in, 3.9170330659373587in),
        (6.334734559708521in, 3.967033065937359in),
        fill: rgb(
          0.0%,
          0.0%,
          0.0%,
          100.0%),
        stroke: stroke(
          paint: rgb(
            0.0%,
            0.0%,
            0.0%,
            100.0%),
          thickness: 0.67pt,
          cap: "butt",
          join: "round")),
      dx: 0in,
      dy: 0in)
    place(
      path(
        (6.31313896846864in, 4.507134010670705in),
        ((6.311457772951827in, 4.504787341928488in), (0.0016811955168130055in, 0.0in), (0.0015761207970115265in, 0.0in)),
        ((6.294208006451204in, 4.5111793873830335in), (0.012889165628892307in, -0.001558608343711576in), (0.006269458281445317in, 0.0in)),
        ((6.293192284159797in, 4.511512123995736in), (0.0006829856787051725in, -0.000332736612702611in), (0.00012258717310054124in, -0.000332736612702611in)),
        ((6.293087209439997in, 4.514314116523756in), (0.0in, -0.0025743306351184714in), (0.0in, -0.002346668742216451in)),
        ((6.3068695101871945in, 4.510969237943432in), (-0.010314834993773836in, 0.003344878580323396in), (-0.004483188044831721in, 0.002679405354919062in)),
        (6.3068695101871945in, 4.570126305191253in),
        ((6.297009998979225in, 4.57539755363459in), (0.009859511207969796in, -0.0013309464508095559in), (0.009631849315068663in, 0.0in)),
        (6.2936476079456005in, 4.57539755363459in),
        (6.2936476079456005in, 4.57819954616261in),
        ((6.310004239327917in, 4.57819954616261in), (-0.01098030821917817in, 0.0in), (-0.005376323163137187in, 0.0in)),
        ((6.326378383163534in, 4.57819954616261in), (-0.010997820672479008in, 0.0in), (-0.005393835616439802in, 0.0in)),
        (6.326378383163534in, 4.57539755363459in),
        (6.32301599212991in, 4.57539755363459in),
        ((6.31313896846864in, 4.570178842551153in), (0.00022766189290024386in, 0.005218711083437633in), (0.0in, 0.003992839352428668in)),
        (6.31313896846864in, 4.507134010670705in),
        (6.381808034179255in, 4.542736828229858in),
        ((6.376992109521722in, 4.515312326361863in), (0.0048159246575334436in, 0.020577132627646044in), (0.004710849937732853in, 0.008948863636363491in)),
        ((6.360407816246503in, 4.504682267208687in), (0.012433841843089155in, 0.002784480074719653in), (0.005814134495641277in, 0.0in)),
        ((6.343928597691086in, 4.515207251642062in), (0.01108538293897876in, -0.010524984433375018in), (0.004255526151930589in, -0.008073240971357087in)),
        ((6.33899008586045in, 4.542736828229858in), (0.0004553237858040404in, -0.019141111457035898in), (0.0in, -0.00873871419676231in)),
        ((6.342580138786977in, 4.567359337569833in), (-0.003590052926527143in, -0.018247976338729543in), (-0.0034674657534248254in, -0.008528564757161128in)),
        ((6.360407816246503in, 4.580441140185026in), (-0.01301175280199196in, -0.001558608343710688in), (-0.00437811332503113in, 0.0in)),
        ((6.377990319359828in, 4.567692074182535in), (-0.012433841843088267in, 0.012749066002490927in), (-0.004588262764631423in, 0.010630059153175608in)),
        ((6.381808034179255in, 4.542736828229858in), (-0.00045532378580315225in, 0.017214741594022698in), (0.0in, 0.008160803237858616in)),
        (6.360407816246503in, 4.578654869948413in),
        ((6.347396063444511in, 4.563979434082909in), (0.005831646948942115in, 0.014675435865504127in), (0.0015761207970106383in, 0.00852856475716024in)),
        ((6.346170191713503in, 4.541493444045549in), (0.0in, 0.015901307596513092in), (0.0in, 0.006269458281444429in)),
        ((6.347623725337413in, 4.518884866835088in), (-0.001453533623910097in, 0.013992450186799843in), (-0.001453533623910097in, 0.00682985678704906in)),
        ((6.360407816246503in, 4.5064685374453in), (-0.01064757160647467in, 0.002924579701121033in), (-0.00437811332503113in, 0.0in)),
        ((6.373069319982494in, 4.518657204942187in), (-0.008073240971357976in, -0.012188667496887184in), (-0.0021365193026161577in, -0.00915901307596556in)),
        ((6.374627928326205in, 4.541493444045549in), (-0.0001050747198005908in, -0.016461706102116835in), (0.0in, -0.008948863636363491in)),
        ((6.373296981875395in, 4.5643296831489115in), (0.0013309464508095559in, -0.015551058530510531in), (0.0013309464508095559in, -0.00660219489414704in)),
        ((6.360407816246503in, 4.578654869948413in), (0.010524984433375018in, -0.002119006849315319in), (0.003922789539228866in, 0.0in)),
        fill: rgb(
          0.0%,
          0.0%,
          0.0%,
          100.0%),
        stroke: stroke(
          paint: rgb(
            0.0%,
            0.0%,
            0.0%,
            100.0%),
          thickness: 0.0pt,
          cap: "butt",
          join: "round"),
        closed: true),
      dx: 0in,
      dy: 0in)
    place(
      path(
        (0.7524640721075264in, 3.743531562940206in),
        (0.7024640721075264in, 3.743531562940206in),
        fill: rgb(
          0.0%,
          0.0%,
          0.0%,
          100.0%),
        stroke: stroke(
          paint: rgb(
            0.0%,
            0.0%,
            0.0%,
            100.0%),
          thickness: 0.67pt,
          cap: "butt",
          join: "round")),
      dx: 0in,
      dy: 0in)
    place(
      path(
        (0.1738675280199253in, 3.745769578209687in),
        ((0.1777903175591532in, 3.743527984187271in), (-0.002031444582814429in, 0.0022415940224158604in), (0.0in, 0.0022415940224158604in)),
        ((0.1738675280199253in, 3.741286390164855in), (0.003922789539227894in, 0.0in), (0.0018913449564134655in, 0.0in)),
        (0.11322190224159405in, 3.741286390164855in),
        ((0.10929911270236616in, 3.743527984187271in), (0.002013932129514312in, -0.0022415940224158604in), (0.0in, -0.0022415940224158604in)),
        ((0.11322190224159405in, 3.745769578209687in), (-0.003922789539227894in, 0.0in), (-0.0019088574097135824in, 0.0in)),
        (0.1738675280199253in, 3.745769578209687in),
        (0.216979596623745in, 3.7004823739755652in),
        ((0.21529840110693302in, 3.6981357052333483in), (0.0016811955168119785in, 0.0in), (0.0015761207970112212in, 0.0in)),
        ((0.19804863460631034in, 3.7045277506878938in), (0.012889165628891669in, -0.001558608343711132in), (0.006269458281444595in, 0.0in)),
        ((0.19703291231490314in, 3.704860487300596in), (0.0006829856787048394in, -0.0003327366127021669in), (0.0001225871731008188in, -0.0003327366127021669in)),
        ((0.19692783759510238in, 3.707662479828616in), (0.0in, -0.0025743306351184714in), (0.0in, -0.002346668742216451in)),
        ((0.2107101383423004in, 3.704317601248292in), (-0.010314834993773364in, 0.00334487858032384in), (-0.004483188044831915in, 0.0026794053549195063in)),
        (0.2107101383423004in, 3.763474668496113in),
        ((0.20085062713433027in, 3.7687459169394506in), (0.009859511207970129in, -0.0013309464508095559in), (0.00963184931506847in, 0.0in)),
        (0.19748823610070637in, 3.7687459169394506in),
        (0.19748823610070637in, 3.77154790946747in),
        ((0.2138448674830227in, 3.77154790946747in), (-0.010980308219178087in, 0.0in), (-0.005376323163138241in, 0.0in)),
        ((0.23021901131863914in, 3.77154790946747in), (-0.010997820672478231in, 0.0in), (-0.005393835616438358in, 0.0in)),
        (0.23021901131863914in, 3.7687459169394506in),
        (0.22685662028501521in, 3.7687459169394506in),
        ((0.216979596623745in, 3.763527205856013in), (0.00022766189290157612in, 0.005218711083437633in), (0.0in, 0.003992839352428668in)),
        (0.216979596623745in, 3.7004823739755652in),
        fill: rgb(
          0.0%,
          0.0%,
          0.0%,
          100.0%),
        stroke: stroke(
          paint: rgb(
            0.0%,
            0.0%,
            0.0%,
            100.0%),
          thickness: 0.0pt,
          cap: "butt",
          join: "round"),
        closed: true),
      dx: 0in,
      dy: 0in)
    place(
      path(
        (0.7524640721075264in, 2.008516532968679in),
        (0.7024640721075264in, 2.008516532968679in),
        fill: rgb(
          0.0%,
          0.0%,
          0.0%,
          100.0%),
        stroke: stroke(
          paint: rgb(
            0.0%,
            0.0%,
            0.0%,
            100.0%),
          thickness: 0.67pt,
          cap: "butt",
          join: "round")),
      dx: 0in,
      dy: 0in)
    place(
      path(
        (0.2342468709326787in, 2.001070161563191in),
        ((0.22943094627514446in, 1.9736456596951961in), (0.0048159246575342485in, 0.02057713262764649in), (0.004710849937733519in, 0.008948863636363491in)),
        ((0.21284665299992653in, 1.9630156005420205in), (0.012433841843088406in, 0.002784480074719653in), (0.005814134495641332in, 0.0in)),
        ((0.19636743444450933in, 1.973540584975395in), (0.011085382938978816in, -0.010524984433374573in), (0.004255526151930256in, -0.008073240971357087in)),
        ((0.1914289226138742in, 2.001070161563191in), (0.00045532378580326327in, -0.01914111145703634in), (0.0in, -0.00873871419676231in)),
        ((0.19501897554039974in, 2.025692670903166in), (-0.003590052926525533in, -0.018247976338729543in), (-0.003467465753424631in, -0.008528564757160684in)),
        ((0.21284665299992653in, 2.0387744735183593in), (-0.013011752801992543in, -0.001558608343711132in), (-0.004378113325031158in, 0.0in)),
        ((0.23042915611325157in, 2.026025407515869in), (-0.012433841843088461in, 0.012749066002490483in), (-0.004588262764632645in, 0.010630059153175608in)),
        ((0.2342468709326787in, 2.001070161563191in), (-0.00045532378580326327in, 0.017214741594022254in), (0.0in, 0.008160803237857728in)),
        (0.21284665299992653in, 2.0369882032817466in),
        ((0.19983490019793398in, 2.022312767416242in), (0.005831646948941449in, 0.014675435865504571in), (0.0015761207970111935in, 0.008528564757161128in)),
        ((0.19860902846692524in, 1.9998267773788823in), (0.0in, 0.015901307596513092in), (0.0in, 0.006269458281444429in)),
        ((0.20006256209083562in, 1.9772182001684215in), (-0.0014535336239103747in, 0.013992450186799399in), (-0.0014535336239103747in, 0.006829856787048616in)),
        ((0.21284665299992653in, 1.9648018707786332in), (-0.010647571606475725in, 0.0029245797011205887in), (-0.004378113325031158in, 0.0in)),
        ((0.22550815673591657in, 1.97699053827552in), (-0.00807324097135742in, -0.01218866749688674in), (-0.0021365193026151863in, -0.009159013075965117in)),
        ((0.22706676507962764in, 1.9998267773788823in), (-0.00010507471980072958in, -0.016461706102116835in), (0.0in, -0.008948863636363491in)),
        ((0.2257358186288182in, 2.0226630164822446in), (0.0013309464508094448in, -0.015551058530510531in), (0.0013309464508094448in, -0.00660219489414704in)),
        ((0.21284665299992653in, 2.0369882032817466in), (0.010524984433374851in, -0.002119006849315319in), (0.003922789539227894in, 0.0in)),
        fill: rgb(
          0.0%,
          0.0%,
          0.0%,
          100.0%),
        stroke: stroke(
          paint: rgb(
            0.0%,
            0.0%,
            0.0%,
            100.0%),
          thickness: 0.0pt,
          cap: "butt",
          join: "round"),
        closed: true),
      dx: 0in,
      dy: 0in)
    place(
      path(
        (0.7524640721075264in, 0.2735015029971519in),
        (0.7024640721075264in, 0.2735015029971519in),
        fill: rgb(
          0.0%,
          0.0%,
          0.0%,
          100.0%),
        stroke: stroke(
          paint: rgb(
            0.0%,
            0.0%,
            0.0%,
            100.0%),
          thickness: 0.67pt,
          cap: "butt",
          join: "round")),
      dx: 0in,
      dy: 0in)
    place(
      path(
        (0.21697959197875588in, 0.23045231403251165in),
        ((0.21529839646194396in, 0.2281056452902943in), (0.001681195516811923in, 0.0in), (0.0015761207970111935in, 0.0in)),
        ((0.19804862996132128in, 0.23449769074484017in), (0.012889165628891697in, -0.001558608343711576in), (0.006269458281444595in, 0.0in)),
        ((0.19703290766991408in, 0.2348304273575419in), (0.0006829856787048394in, -0.00033273661270172283in), (0.0001225871731008743in, -0.00033273661270172283in)),
        ((0.19692783295011332in, 0.23763241988556238in), (0.0in, -0.0025743306351184714in), (0.0in, -0.002346668742216451in)),
        ((0.21071013369731134in, 0.2342875413052381in), (-0.010314834993773392in, 0.003344878580324284in), (-0.004483188044831887in, 0.0026794053549199504in)),
        (0.21071013369731134in, 0.29344460855305954in),
        ((0.2008506224893412in, 0.298715856996397in), (0.009859511207970129in, -0.001330946450810444in), (0.009631849315068497in, 0.0in)),
        (0.19748823145571728in, 0.298715856996397in),
        (0.19748823145571728in, 0.3015178495244166in),
        ((0.21384486283803358in, 0.3015178495244166in), (-0.010980308219178031in, 0.0in), (-0.005376323163138214in, 0.0in)),
        ((0.23021900667365006in, 0.3015178495244166in), (-0.010997820672478203in, 0.0in), (-0.005393835616438358in, 0.0in)),
        (0.23021900667365006in, 0.298715856996397in),
        (0.22685661564002615in, 0.298715856996397in),
        ((0.21697959197875588in, 0.2934971459129603in), (0.00022766189290163164in, 0.0052187110834367445in), (0.0in, 0.003992839352427779in)),
        (0.21697959197875588in, 0.23045231403251165in),
        fill: rgb(
          0.0%,
          0.0%,
          0.0%,
          100.0%),
        stroke: stroke(
          paint: rgb(
            0.0%,
            0.0%,
            0.0%,
            100.0%),
          thickness: 0.0pt,
          cap: "butt",
          join: "round"),
        closed: true),
      dx: 0in,
      dy: 0in)
    place(
      path(
        (1.0182611597390026in, 2.008516532968679in),
        (1.1054513234985026in, 1.8300494518405825in),
        (1.1517046420782373in, 1.7360237179283313in),
        (1.190514897898015in, 1.6577450890235106in),
        (1.2250719749978167in, 1.5886608801342206in),
        (1.256970815397634in, 1.5255097228114836in),
        (1.286743066437463in, 1.4671861238136135in),
        (1.3143887281173048in, 1.413627001644569in),
        (1.3409710951171523in, 1.3627259822826066in),
        (1.3664901674370058in, 1.3144599674354822in),
        (1.3909459450768658in, 1.2687968184796388in),
        (1.4143384280367317in, 1.225696690102985in),
        (1.4371992636566007in, 1.1841539031064592in),
        (1.4595284519364724in, 1.1441578874967142in),
        (1.4807943455363506in, 1.1066256306818891in),
        (1.5015285917962318in, 1.0705799618416902in),
        (1.5217311907161157in, 1.03600006125615in),
        (1.5419337896360001in, 1.0019745351944889in),
        (1.561604741215887in, 0.9693955765832638in),
        (1.5807440454557775in, 0.9382359960435736in),
        (1.599351702355671in, 0.9084667906463979in),
        (1.6174277119155673in, 0.8800573969497831in),
        (1.6355037214754635in, 0.8521629791363421in),
        (1.6530480836953632in, 0.8255935204018137in),
        (1.6705924459152626in, 0.7995326056708265in),
        (1.687605160795165in, 0.7747576705943886in),
        (1.7046178756750672in, 0.7504814768352301in),
        (1.7210989432149726in, 0.7274487828235294in),
        (1.7375800107548782in, 0.7049020946565805in),
        (1.753529430954787in, 0.6835535193833149in),
        (1.7694788511546955in, 0.6626756971598073in),
        (1.784896624014607in, 0.642948253274688in),
        (1.8003143968745183in, 0.6236741839386655in),
        (1.8152005223944334in, 0.605500934700296in),
        (1.830086647914348in, 0.587761922733498in),
        (1.8449727734342625in, 0.5704626383123435in),
        (1.8593272516141803in, 0.5542026481718283in),
        (1.873681729794098in, 0.5383611961325663in),
        (1.8880362079740156in, 0.5229428412181143in),
        (1.9018590388139365in, 0.508499561479824in),
        (1.915681869653857in, 0.4944565885225485in),
        (1.9295047004937778in, 0.4808176699687525in),
        (1.9427958839937016in, 0.4680877570978783in),
        (1.9560870674936255in, 0.45573792197752017in),
        (1.9693782509935494in, 0.443771211744699in),
        (1.9821377871534762in, 0.43264635547312924in),
        (1.9948973233134029in, 0.42187983849019517in),
        (2.0076568594733297in, 0.4114741090090144in),
        (2.020416395633257in, 0.40143153320273406in),
        (2.0326442844531867in, 0.3921502837536659in),
        (2.044872173273116in, 0.3832065916975482in),
        (2.0571000620930464in, 0.37460232480994016in),
        (2.0693279509129763in, 0.3663392799817986in),
        (2.081555839732906in, 0.35841918284422736in),
        (2.0932520812128392in, 0.3511658694341939in),
        (2.104948322692772in, 0.34422923015672335in),
        (2.116644564172705in, 0.33761059041281616in),
        (2.128340805652638in, 0.33131121484250503in),
        (2.1400370471325707in, 0.32533230708322236in),
        (2.151733288612504in, 0.31967500953981176in),
        (2.1628978827524397in, 0.3145758701075101in),
        (2.1740624768923755in, 0.3097716411637794in),
        (2.1852270710323114in, 0.30526315911188906in),
        (2.1963916651722477in, 0.3010512088663706in),
        (2.207556259312184in, 0.29713652371637256in),
        (2.2187208534521194in, 0.2935197851979936in),
        (2.2298854475920558in, 0.290201622975629in),
        (2.2410500417319916in, 0.2871826147323473in),
        (2.2522146358719275in, 0.2844632860693217in),
        (2.2628475826718666in, 0.28215249664690134in),
        (2.2734805294718057in, 0.2801143201184635in),
        (2.2841134762717448in, 0.2783490783357081in),
        (2.294746423071684in, 0.27685705005077743in),
        (2.305379369871623in, 0.2756384708722326in),
        (2.316012316671562in, 0.27469353322785306in),
        (2.3266452634715007in, 0.2740223863342468in),
        (2.33727821027144in, 0.2736251361732869in),
        (2.347911157071379in, 0.2735018454753808in),
        (2.358544103871318in, 0.27365253370955767in),
        (2.369177050671257in, 0.27407717708039936in),
        (2.379809997471196in, 0.2747757085317941in),
        (2.3904429442711352in, 0.2757480177575298in),
        (2.401075891071074in, 0.2769939512187065in),
        (2.411708837871013in, 0.2785133121679886in),
        (2.422341784670952in, 0.2803058606806683in),
        (2.432974731470891in, 0.28237131369255586in),
        (2.4436076782708307in, 0.2847093450446776in),
        (2.4542406250707693in, 0.287319585534779in),
        (2.4654052192107048in, 0.29035285153680856in),
        (2.476569813350641in, 0.2936852451894385in),
        (2.4877344074905774in, 0.2973161863319449in),
        (2.4988990016305133in, 0.30124504282729614in),
        (2.5100635957704496in, 0.30547113067219733in),
        (2.521228189910385in, 0.30999371411618615in),
        (2.5323927840503213in, 0.31481200578971347in),
        (2.5435573781902576in, 0.3199251668412302in),
        (2.554721972330193in, 0.32533230708322236in),
        (2.5664182138101257in, 0.33131121484250503in),
        (2.578114455290059in, 0.33761059041281616in),
        (2.5898106967699923in, 0.34422923015672335in),
        (2.6015069382499254in, 0.3511658694341939in),
        (2.613203179729858in, 0.35841918284422736in),
        (2.624899421209791in, 0.3659877844781061in),
        (2.6371273100297206in, 0.37423595390302733in),
        (2.6493551988496504in, 0.38282542189928837in),
        (2.6615830876695807in, 0.3917543946664903in),
        (2.67381097648951in, 0.40102100750300806in),
        (2.6865705126494372in, 0.4110484017746554in),
        (2.6993300488093643in, 0.42143904652335706in),
        (2.712089584969291in, 0.4321905790061029in),
        (2.7248491211292176in, 0.44330055441712446in),
        (2.7381403046291415in, 0.4552518776085268in),
        (2.7514314881290654in, 0.46758644561164164in),
        (2.764722671628989in, 0.4803012150563797in),
        (2.778013855128913in, 0.493393048763636in),
        (2.7918366859688337in, 0.5074050722964465in),
        (2.805659516808755in, 0.5218176946945929in),
        (2.8194823476486754in, 0.5366270696879436in),
        (2.8338368258285933in, 0.5524217338566899in),
        (2.8481913040085107in, 0.5686354486573775in),
        (2.8625457821884277in, 0.5852635479326667in),
        (2.8774319077083432in, 0.602940074661821in),
        (2.892318033228258in, 0.6210516312559289in),
        (2.9072041587481725in, 0.6395926121373128in),
        (2.922621931608084in, 0.659242351099409in),
        (2.9380397044679953in, 0.67934005489996in),
        (2.953989124667904in, 0.7005950810532764in),
        (2.969938544867813in, 0.7223148054706359in),
        (2.986419612407718in, 0.7452385134769934in),
        (3.0029006799476234in, 0.7686414783383837in),
        (3.0199133948275265in, 0.7932926591991207in),
        (3.0369261097074287in, 0.8184350886936702in),
        (3.0544704719273277in, 0.8448669772923507in),
        (3.0720148341472275in, 0.8717991241474659in),
        (3.0900908437071237in, 0.900058389755805in),
        (3.108698500607017in, 0.9296770603689475in),
        (3.12730615750691in, 0.9598174481774508in),
        (3.1464454617468007in, 0.9913479264531961in),
        (3.166116413326688in, 1.0242963801976033in),
        (3.1863190122465723in, 1.0586888289430534in),
        (3.207053258506453in, 1.0945491623015218in),
        (3.228319152106331in, 1.131898864830541in),
        (3.2501166930462064in, 1.170756730522513in),
        (3.2724458813260786in, 1.2111385673181774in),
        (3.295306716945947in, 1.2530568921472645in),
        (3.31923084724581in, 1.297514879617196in),
        (3.3436866248856694in, 1.3435479972526183in),
        (3.3692056972055235in, 1.3921741568782289in),
        (3.3957880642053713in, 1.4434218417456042in),
        (3.4239653732252098in, 1.498352149272916in),
        (3.453737624265039in, 1.557005091540245in),
        (3.485636464664856in, 1.6204658414424564in),
        (3.5207251891046547in, 1.6909060849473283in),
        (3.5600670922644286in, 1.7705280984588532in),
        (3.606852058184161in, 1.865869116125645in),
        (3.675966212383764in, 2.007426390946002in),
        (3.7636880234832613in, 2.1869836140967753in),
        (3.8099413420629964in, 2.2810093480090274in),
        (3.8487515978827735in, 2.3592879769138473in),
        (3.8833086749825765in, 2.4283721858031373in),
        (3.9152075153823933in, 2.4915233431258743in),
        (3.944979766422222in, 2.549846942123744in),
        (3.972625428102064in, 2.6034060642927894in),
        (3.9992077951019116in, 2.6543070836547518in),
        (4.024726867421765in, 2.702573098501876in),
        (4.0491826450616255in, 2.74823624745772in),
        (4.072575128021491in, 2.7913363758343728in),
        (4.09543596364136in, 2.832879162830899in),
        (4.1177651519212315in, 2.872875178440644in),
        (4.13903104552111in, 2.9104074352554687in),
        (4.159765291780991in, 2.946453104095667in),
        (4.179967890700875in, 2.9810330046812084in),
        (4.20017048962076in, 3.015058530742869in),
        (4.219841441200646in, 3.047637489354094in),
        (4.238980745440537in, 3.0787970698937848in),
        (4.25758840234043in, 3.1085662752909604in),
        (4.275664411900326in, 3.136975668987575in),
        (4.293740421460223in, 3.164870086801016in),
        (4.311284783680122in, 3.1914395455355438in),
        (4.328829145900022in, 3.217500460266532in),
        (4.345841860779924in, 3.24227539534297in),
        (4.362854575659826in, 3.2665515891021286in),
        (4.379335643199732in, 3.289584283113829in),
        (4.395816710739637in, 3.3121309712807774in),
        (4.411766130939546in, 3.333479546554043in),
        (4.427715551139455in, 3.354357368777551in),
        (4.4431333239993664in, 3.37408481266267in),
        (4.458551096859278in, 3.393358881998693in),
        (4.473437222379193in, 3.4115321312370632in),
        (4.488323347899107in, 3.4292711432038594in),
        (4.503209473419021in, 3.446570427625014in),
        (4.517563951598939in, 3.46283041776553in),
        (4.531918429778857in, 3.478671869804791in),
        (4.546272907958775in, 3.4940902247192436in),
        (4.560095738798696in, 3.508533504457534in),
        (4.573918569638616in, 3.522576477414809in),
        (4.587741400478538in, 3.536215395968606in),
        (4.601032583978461in, 3.54894530883948in),
        (4.614323767478385in, 3.5612951439598377in),
        (4.627614950978308in, 3.573261854192659in),
        (4.640374487138235in, 3.584386710464229in),
        (4.653134023298162in, 3.5951532274471623in),
        (4.665893559458089in, 3.605558956928344in),
        (4.678653095618016in, 3.615601532734624in),
        (4.690880984437946in, 3.6248827821836924in),
        (4.703108873257875in, 3.633826474239809in),
        (4.715336762077806in, 3.6424307411274173in),
        (4.727564650897736in, 3.650693785955559in),
        (4.739792539717665in, 3.658613883093131in),
        (4.751488781197598in, 3.6658671965031644in),
        (4.763185022677532in, 3.6728038357806345in),
        (4.774881264157464in, 3.679422475524542in),
        (4.786577505637397in, 3.6857218510948524in),
        (4.798273747117331in, 3.691700758854135in),
        (4.809969988597263in, 3.6973580563975457in),
        (4.8211345827372in, 3.7024571958298482in),
        (4.832299176877135in, 3.707261424773579in),
        (4.843463771017071in, 3.7117699068254693in),
        (4.854628365157007in, 3.7159818570709873in),
        (4.865792959296943in, 3.719896542220985in),
        (4.8769575534368785in, 3.7235132807393643in),
        (4.888122147576815in, 3.7268314429617293in),
        (4.89928674171675in, 3.72985045120501in),
        (4.910451335856687in, 3.7325697798680366in),
        (4.921084282656627in, 3.7348805692904565in),
        (4.931717229456565in, 3.736918745818895in),
        (4.942350176256505in, 3.7386839876016498in),
        (4.952983123056443in, 3.7401760158865804in),
        (4.963616069856382in, 3.7413945950651253in),
        (4.974249016656321in, 3.7423395327095053in),
        (4.98488196345626in, 3.743010679603112in),
        (4.995514910256199in, 3.7434079297640714in),
        (5.006147857056138in, 3.7435312204619775in),
        (5.0167808038560775in, 3.7433805322278006in),
        (5.027413750656016in, 3.742955888856959in),
        (5.038046697455956in, 3.7422573574055633in),
        (5.048679644255894in, 3.741285048179828in),
        (5.059312591055834in, 3.7400391147186514in),
        (5.069945537855772in, 3.7385197537693697in),
        (5.080578484655712in, 3.7367272052566896in),
        (5.09121143145565in, 3.7346617522448025in),
        (5.10184437825559in, 3.7323237208926803in),
        (5.112477325055528in, 3.729713480402579in),
        (5.123641919195465in, 3.7266802144005493in),
        (5.1348065133354in, 3.72334782074792in),
        (5.1459711074753365in, 3.7197168796054125in),
        (5.157135701615273in, 3.715788023110062in),
        (5.168300295755208in, 3.7115619352651605in),
        (5.1794648898951445in, 3.7070393518211717in),
        (5.190629484035081in, 3.7022210601476444in),
        (5.201794078175016in, 3.697107899096128in),
        (5.212958672314953in, 3.691700758854135in),
        (5.224654913794885in, 3.6857218510948524in),
        (5.236351155274818in, 3.679422475524542in),
        (5.248047396754751in, 3.6728038357806345in),
        (5.259743638234684in, 3.665867196503165in),
        (5.271439879714617in, 3.658613883093131in),
        (5.28313612119455in, 3.6510452814592513in),
        (5.29536401001448in, 3.6427971120343305in),
        (5.30759189883441in, 3.63420764403807in),
        (5.319819787654339in, 3.625278671270869in),
        (5.33204767647427in, 3.6160120584343494in),
        (5.344807212634196in, 3.6059846641627034in),
        (5.357566748794124in, 3.5955940194140013in),
        (5.37032628495405in, 3.584842486931255in),
        (5.383085821113977in, 3.5737325115202334in),
        (5.396377004613901in, 3.5617811883288315in),
        (5.409668188113825in, 3.549446620325717in),
        (5.422959371613748in, 3.536731850880978in),
        (5.436250555113673in, 3.523640017173722in),
        (5.450073385953593in, 3.509627993640912in),
        (5.463896216793514in, 3.495215371242765in),
        (5.4777190476334345in, 3.4804059962494156in),
        (5.492073525813352in, 3.4646113320806684in),
        (5.50642800399327in, 3.4483976172799817in),
        (5.520782482173187in, 3.4317695180046917in),
        (5.535668607693102in, 3.4140929912755373in),
        (5.550554733213017in, 3.395981434681429in),
        (5.565440858732932in, 3.3774404538000455in),
        (5.580858631592844in, 3.3577907148379493in),
        (5.596276404452755in, 3.3376930110373983in),
        (5.612225824652663in, 3.3164379848840824in),
        (5.628175244852572in, 3.294718260466723in),
        (5.644656312392478in, 3.2717945524603653in),
        (5.661137379932383in, 3.2483915875989737in),
        (5.678150094812286in, 3.2237404067382367in),
        (5.695162809692187in, 3.198597977243688in),
        (5.712707171912086in, 3.1721660886450067in),
        (5.730251534131986in, 3.1452339417898925in),
        (5.748327543691882in, 3.1169746761815533in),
        (5.766935200591775in, 3.0873560055684104in),
        (5.78554285749167in, 3.0572156177599057in),
        (5.804682161731559in, 3.0256851394841617in),
        (5.824353113311447in, 2.992736685739755in),
        (5.8445557122313305in, 2.9583442369943063in),
        (5.865289958491212in, 2.9224839036358357in),
        (5.88655585209109in, 2.885134201106817in),
        (5.908353393030965in, 2.8462763354148457in),
        (5.930682581310838in, 2.80589449861918in),
        (5.953543416930706in, 2.7639761737900956in),
        (5.977467547230568in, 2.719518186320163in),
        (6.001923324870429in, 2.6734850686847396in),
        (6.027442397190282in, 2.624858909059128in),
        (6.05402476419013in, 2.5736112241917546in),
        (6.082202073209968in, 2.518680916664443in),
        (6.111974324249798in, 2.460027974397114in),
        (6.143873164649614in, 2.396567224494902in),
        (6.178961889089414in, 2.326126980990029in),
        (6.218303792249189in, 2.2465049674785043in),
        (6.26508875816892in, 2.151163949811714in),
        (6.334202912368524in, 2.009606674991355in),
        (6.334202912368524in, 2.009606674991355in),
        fill: none,
        stroke: stroke(
          paint: rgb(
            0.0%,
            0.0%,
            0.0%,
            100.0%),
          thickness: 1.0pt,
          cap: "butt",
          join: "round",
          dash: (1.0pt, 0.0pt))),
      dx: 0in,
      dy: 0in)
    place(
      path(
        (0.7524640721075264in, 3.9170330659373587in),
        (0.7524640721075264in, 0.09999999999999964in),
        fill: none,
        stroke: stroke(
          paint: rgb(
            0.0%,
            0.0%,
            0.0%,
            100.0%),
          thickness: 1.0pt,
          cap: "square",
          join: "miter")),
      dx: 0in,
      dy: 0in)
    place(
      path(
        (6.6in, 3.9170330659373587in),
        (6.6in, 0.09999999999999964in),
        fill: none,
        stroke: stroke(
          paint: rgb(
            0.0%,
            0.0%,
            0.0%,
            100.0%),
          thickness: 1.0pt,
          cap: "square",
          join: "miter")),
      dx: 0in,
      dy: 0in)
    place(
      path(
        (0.7524640721075264in, 3.9170330659373587in),
        (6.6in, 3.9170330659373587in),
        fill: none,
        stroke: stroke(
          paint: rgb(
            0.0%,
            0.0%,
            0.0%,
            100.0%),
          thickness: 1.0pt,
          cap: "square",
          join: "miter")),
      dx: 0in,
      dy: 0in)
    place(
      path(
        (0.7524640721075264in, 0.09999999999999964in),
        (6.6in, 0.09999999999999964in),
        fill: none,
        stroke: stroke(
          paint: rgb(
            0.0%,
            0.0%,
            0.0%,
            100.0%),
          thickness: 1.0pt,
          cap: "square",
          join: "miter")),
      dx: 0in,
      dy: 0in)
  },
  spacing: 0pt,
  above: 0pt,
  below: 0pt,
  width: 6.699999999999999in,
  height: 4.699999999999999in)