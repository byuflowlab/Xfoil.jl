struct globalstruct
  #cr01
  version::Array{Float64,1}
  #cr03
  aij::Array{Float64,2}
  dij::Array{Float64,2}
  #cr04
  qinv::Array{Float64,1}
  qvis::Array{Float64,1}
  cpi::Array{Float64,1}
  cpv::Array{Float64,1}
  qinvu::Array{Float64,2}
  qinv_a::Array{Float64,1}
  #cr05
  x::Array{Float64,1}
  y::Array{Float64,1}
  xp::Array{Float64,1}
  yp::Array{Float64,1}
  s::Array{Float64,1}
  sle::Array{Float64,1}
  xle::Array{Float64,1}
  yle::Array{Float64,1}
  xte::Array{Float64,1}
  yte::Array{Float64,1}
  chord::Array{Float64,1}
  yimage::Array{Float64,1}
  wgap::Array{Float64,1}
  waklen::Array{Float64,1}
  #cr06
  gam::Array{Float64,1}
  gamu::Array{Float64,2}
  gam_a::Array{Float64,1}
  sig::Array{Float64,1}
  nx::Array{Float64,1}
  ny::Array{Float64,1}
  apanel::Array{Float64,1}
  sst::Array{Float64,1}
  sst_go::Array{Float64,1}
  sst_gp::Array{Float64,1}
  gamte::Array{Float64,1}
  gamte_a::Array{Float64,1}
  sigte::Array{Float64,1}
  sigte_a::Array{Float64,1}
  dste::Array{Float64,1}
  ante::Array{Float64,1}
  aste::Array{Float64,1}
  #cr07
  ssple::Array{Float64,1}
  sspec::Array{Float64,1}
  xspoc::Array{Float64,1}
  yspoc::Array{Float64,1}
  qgamm::Array{Float64,1}
  qspec::Array{Float64,2}
  qspecp::Array{Float64,2}
  algam::Array{Float64,1}
  clgam::Array{Float64,1}
  cmgam::Array{Float64,1}
  alqsp::Array{Float64,1}
  clqsp::Array{Float64,1}
  cmqsp::Array{Float64,1}
  qf0::Array{Float64,1}
  qf1::Array{Float64,1}
  qf2::Array{Float64,1}
  qf3::Array{Float64,1}
  qdof0::Array{Float64,1}
  qdof1::Array{Float64,1}
  qdof2::Array{Float64,1}
  qdof3::Array{Float64,1}
  clspec::Array{Float64,1}
  ffilt::Array{Float64,1}
  #cr09
  adeg::Array{Float64,1}
  alfa::Array{Float64,1}
  awake::Array{Float64,1}
  mvisc::Array{Float64,1}
  avisc::Array{Float64,1}
  xcmref::Array{Float64,1}
  ycmref::Array{Float64,1}
  cl::Array{Float64,1}
  cm::Array{Float64,1}
  cd::Array{Float64,1}
  cdp::Array{Float64,1}
  cdf::Array{Float64,1}
  cl_alf::Array{Float64,1}
  cl_msq::Array{Float64,1}
  psio::Array{Float64,1}
  circ::Array{Float64,1}
  cosa::Array{Float64,1}
  sina::Array{Float64,1}
  qinf::Array{Float64,1}
  gamma::Array{Float64,1}
  gamm1::Array{Float64,1}
  minf1::Array{Float64,1}
  minf::Array{Float64,1}
  minf_cl::Array{Float64,1}
  tklam::Array{Float64,1}
  tkl_msq::Array{Float64,1}
  cpstar::Array{Float64,1}
  qstar::Array{Float64,1}
  cpmn::Array{Float64,1}
  cpmni::Array{Float64,1}
  cpmnv::Array{Float64,1}
  xcpmni::Array{Float64,1}
  xcpmnv::Array{Float64,1}
  #cr10
  xpref::Array{Float64,1}
  cpref::Array{Float64,1}
  verspol::Array{Float64,1}
  cpolxy::Array{Float64,3}
  machp1::Array{Float64,1}
  reynp1::Array{Float64,1}
  acritp::Array{Float64,1}
  xstripp::Array{Float64,2}
  #cr11
  pi::Array{Float64,1}
  hopi::Array{Float64,1}
  qopi::Array{Float64,1}
  dtor::Array{Float64,1}
  #cr12
  cvpar::Array{Float64,1}
  cterat::Array{Float64,1}
  ctrrat::Array{Float64,1}
  xsref1::Array{Float64,1}
  xsref2::Array{Float64,1}
  xpref1::Array{Float64,1}
  xpref2::Array{Float64,1}
  #cr13
  size::Array{Float64,1}
  scrnfr::Array{Float64,1}
  plotar::Array{Float64,1}
  pfac::Array{Float64,1}
  qfac::Array{Float64,1}
  vfac::Array{Float64,1}
  xwind::Array{Float64,1}
  ywind::Array{Float64,1}
  xpage::Array{Float64,1}
  ypage::Array{Float64,1}
  xmarg::Array{Float64,1}
  ymarg::Array{Float64,1}
  ch::Array{Float64,1}
  chg::Array{Float64,1}
  chq::Array{Float64,1}
  xofair::Array{Float64,1}
  yofair::Array{Float64,1}
  facair::Array{Float64,1}
  xofa::Array{Float64,1}
  yofa::Array{Float64,1}
  faca::Array{Float64,1}
  uprwt::Array{Float64,1}
  cpmin::Array{Float64,1}
  cpmax::Array{Float64,1}
  cpdel::Array{Float64,1}
  cpolplf::Array{Float64,2}
  xcdwid::Array{Float64,1}
  xalwid::Array{Float64,1}
  xocwid::Array{Float64,1}
  #cr14
  xb::Array{Float64,1}
  yb::Array{Float64,1}
  xbp::Array{Float64,1}
  ybp::Array{Float64,1}
  sb::Array{Float64,1}
  snew::Array{Float64,1}
  xbf::Array{Float64,1}
  ybf::Array{Float64,1}
  xof::Array{Float64,1}
  yof::Array{Float64,1}
  hmom::Array{Float64,1}
  hfx::Array{Float64,1}
  hfy::Array{Float64,1}
  xbmin::Array{Float64,1}
  xbmax::Array{Float64,1}
  ybmin::Array{Float64,1}
  ybmax::Array{Float64,1}
  sble::Array{Float64,1}
  chordb::Array{Float64,1}
  areab::Array{Float64,1}
  radble::Array{Float64,1}
  angbte::Array{Float64,1}
  ei11ba::Array{Float64,1}
  ei22ba::Array{Float64,1}
  apx1ba::Array{Float64,1}
  apx2ba::Array{Float64,1}
  ei11bt::Array{Float64,1}
  ei22bt::Array{Float64,1}
  apx1bt::Array{Float64,1}
  apx2bt::Array{Float64,1}
  thickb::Array{Float64,1}
  cambrb::Array{Float64,1}
  xcm::Array{Float64,1}
  ycm::Array{Float64,1}
  scm::Array{Float64,1}
  xcmp::Array{Float64,1}
  ycmp::Array{Float64,1}
  xtk::Array{Float64,1}
  ytk::Array{Float64,1}
  stk::Array{Float64,1}
  xtkp::Array{Float64,1}
  ytkp::Array{Float64,1}
  #cr15
  xssi::Array{Float64,2}
  uedg::Array{Float64,2}
  uinv::Array{Float64,2}
  mass::Array{Float64,2}
  thet::Array{Float64,2}
  dstr::Array{Float64,2}
  ctau::Array{Float64,2}
  delt::Array{Float64,2}
  uslp::Array{Float64,2}
  guxq::Array{Float64,2}
  guxd::Array{Float64,2}
  tau::Array{Float64,2}
  dis::Array{Float64,2}
  ctq::Array{Float64,2}
  vti::Array{Float64,2}
  reinf1::Array{Float64,1}
  reinf::Array{Float64,1}
  reinf_cl::Array{Float64,1}
  acrit::Array{Float64,1}
  xstrip::Array{Float64,1}
  xoctr::Array{Float64,1}
  yoctr::Array{Float64,1}
  xssitr::Array{Float64,1}
  uinv_a::Array{Float64,2}
  #cr17
  rmsbl::Array{Float64,1}
  rmxbl::Array{Float64,1}
  rlx::Array{Float64,1}
  vaccel::Array{Float64,1}
  #cr18
  xsf::Array{Float64,1}
  ysf::Array{Float64,1}
  xoff::Array{Float64,1}
  yoff::Array{Float64,1}
  xgmin::Array{Float64,1}
  xgmax::Array{Float64,1}
  ygmin::Array{Float64,1}
  ygmax::Array{Float64,1}
  dxyg::Array{Float64,1}
  xcmin::Array{Float64,1}
  xcmax::Array{Float64,1}
  ycmin::Array{Float64,1}
  ycmax::Array{Float64,1}
  dxyc::Array{Float64,1}
  dyoffc::Array{Float64,1}
  xpmin::Array{Float64,1}
  xpmax::Array{Float64,1}
  ypmin::Array{Float64,1}
  ypmax::Array{Float64,1}
  dxyp::Array{Float64,1}
  dyoffp::Array{Float64,1}
  ysfp::Array{Float64,1}
  gtick::Array{Float64,1}
  #qmat
  q::Array{Float64,2}
  dq::Array{Float64,1}
  dzdg::Array{Float64,1}
  dzdn::Array{Float64,1}
  dzdm::Array{Float64,1}
  dqdg::Array{Float64,1}
  dqdm::Array{Float64,1}
  qtan1::Array{Float64,1}
  qtan2::Array{Float64,1}
  z_qinf::Array{Float64,1}
  z_alfa::Array{Float64,1}
  z_qdof0::Array{Float64,1}
  z_qdof1::Array{Float64,1}
  z_qdof2::Array{Float64,1}
  z_qdof3::Array{Float64,1}
  #vmat
  va::Array{Float64,3}
  vb::Array{Float64,3}
  vdel::Array{Float64,3}
  vm::Array{Float64,3}
  vz::Array{Float64,2}
  #ci01
  iq1::Array{Int32,1}
  iq2::Array{Int32,1}
  nsp::Array{Int32,1}
  nqsp::Array{Int32,1}
  kqtarg::Array{Int32,1}
  iacqsp::Array{Int32,1}
  nc1::Array{Int32,1}
  nname::Array{Int32,1}
  nprefix::Array{Int32,1}
  #ci03
  ncpref::Array{Int32,1}
  napol::Array{Int32,1}
  npol::Array{Int32,1}
  ipact::Array{Int32,1}
  nlref::Array{Int32,1}
  icolp::Array{Int32,1}
  icolr::Array{Int32,1}
  imatyp::Array{Int32,1}
  iretyp::Array{Int32,1}
  nxypol::Array{Int32,1}
  npolref::Array{Int32,1}
  ndref::Array{Int32,2}
  #ci04
  n::Array{Int32,1}
  nb::Array{Int32,1}
  nw::Array{Int32,1}
  npan::Array{Int32,1}
  ist::Array{Int32,1}
  kimage::Array{Int32,1}
  itmax::Array{Int32,1}
  nseqex::Array{Int32,1}
  retyp::Array{Int32,1}
  matyp::Array{Int32,1}
  aijpix::Array{Int32,1}
  idev::Array{Int32,1}
  idevrp::Array{Int32,1}
  ipslu::Array{Int32,1}
  ncolor::Array{Int32,1}
  icols::Array{Int32,1}
  nover::Array{Int32,1}
  ncm::Array{Int32,1}
  ntk::Array{Int32,1}
  #ci05
  iblte::Array{Int32,1}
  nbl::Array{Int32,1}
  ipan::Array{Int32,2}
  isys::Array{Int32,2}
  nsys::Array{Int32,1}
  itran::Array{Int32,1}
  #ci06
  imxbl::Array{Int32,1}
  ismxbl::Array{Int32,1}
  #cl01
  ok::Array{Int32,1}
  limage::Array{Int32,1}
  sharp::Array{Int32,1}
  lgamu::Array{Int32,1}
  lqinu::Array{Int32,1}
  lvisc::Array{Int32,1}
  lalfa::Array{Int32,1}
  lwake::Array{Int32,1}
  lpacc::Array{Int32,1}
  lblini::Array{Int32,1}
  lipan::Array{Int32,1}
  lqaij::Array{Int32,1}
  ladij::Array{Int32,1}
  lwdij::Array{Int32,1}
  lcpxx::Array{Int32,1}
  lqvdes::Array{Int32,1}
  lqrefl::Array{Int32,1}
  lqspec::Array{Int32,1}
  lvconv::Array{Int32,1}
  lcpref::Array{Int32,1}
  lclock::Array{Int32,1}
  lpfile::Array{Int32,1}
  lpfilx::Array{Int32,1}
  lppsho::Array{Int32,1}
  lbflap::Array{Int32,1}
  lflap::Array{Int32,1}
  leiw::Array{Int32,1}
  lscini::Array{Int32,1}
  lforef::Array{Int32,1}
  lnorm::Array{Int32,1}
  lgsame::Array{Int32,1}
  lplcam::Array{Int32,1}
  lqsym::Array{Int32,1}
  lgsym::Array{Int32,1}
  lqgrid::Array{Int32,1}
  lggrid::Array{Int32,1}
  lgtick::Array{Int32,1}
  lqslop::Array{Int32,1}
  lgslop::Array{Int32,1}
  lcslop::Array{Int32,1}
  lqsppl::Array{Int32,1}
  lgeopl::Array{Int32,1}
  lgparm::Array{Int32,1}
  lcpgrd::Array{Int32,1}
  lblgrd::Array{Int32,1}
  lblsym::Array{Int32,1}
  lplot::Array{Int32,1}
  lsym::Array{Int32,1}
  liqset::Array{Int32,1}
  lclip::Array{Int32,1}
  lvlab::Array{Int32,1}
  lcurs::Array{Int32,1}
  lland::Array{Int32,1}
  lpgrid::Array{Int32,1}
  lpcdw::Array{Int32,1}
  lplist::Array{Int32,1}
  lplegn::Array{Int32,1}
  lcminp::Array{Int32,1}
  lhmomp::Array{Int32,1}
  lexitflag::Array{Int32,1}
  #cl02
  tforce::Array{Int32,1}
  #cc01
  fname::String
  name::String
  ispars::String
  oname::String
  prefix::String
  pfname::String
  pfnamx::String
  namepol::String
  nameref::String
  #cc02
  labref::String
  #cc03
  vmxbl::String
end

"""
    getglobals()
Returns a globalstruct, which contains fields directly referencing XFOIL's globals
"""
function getglobals()

  cr01 = cglobal((:cr01_,libxfoil),Float64)
  version = unsafe_wrap(Array,cr01,1)

  cr03 = cglobal((:cr03_,libxfoil),Float64)
  aij = unsafe_wrap(Array,cr03,(IQX,IQX))
  dij = unsafe_wrap(Array,cr03+sizeof(Float64)*IQX^2,(IZX,IZX))

  cr04 = cglobal((:cr04_,libxfoil),Float64)
  qinv = unsafe_wrap(Array,cr04,IZX)
  qvis = unsafe_wrap(Array,cr04+sizeof(Float64)*IZX,IZX)
  cpi = unsafe_wrap(Array,cr04+sizeof(Float64)*(2*IZX),IZX)
  cpv = unsafe_wrap(Array,cr04+sizeof(Float64)*(3*IZX),IZX)
  qinvu = unsafe_wrap(Array,cr04+sizeof(Float64)*(4*IZX),(IZX,2))
  qinv_a = unsafe_wrap(Array,cr04+sizeof(Float64)*(6*IZX),IZX)

  cr05 = cglobal((:cr05_,libxfoil),Float64)
  x = unsafe_wrap(Array,cr05,IZX)
  y = unsafe_wrap(Array,cr05+sizeof(Float64)*IZX,IZX)
  xp = unsafe_wrap(Array,cr05+sizeof(Float64)*(2*IZX),IZX)
  yp = unsafe_wrap(Array,cr05+sizeof(Float64)*(3*IZX),IZX)
  s = unsafe_wrap(Array,cr05+sizeof(Float64)*(4*IZX),IZX)
  sle = unsafe_wrap(Array,cr05+sizeof(Float64)*(5*IZX),1)
  xle = unsafe_wrap(Array,cr05+sizeof(Float64)*(5*IZX+1),1)
  yle = unsafe_wrap(Array,cr05+sizeof(Float64)*(5*IZX+2),1)
  xte = unsafe_wrap(Array,cr05+sizeof(Float64)*(5*IZX+3),1)
  yte = unsafe_wrap(Array,cr05+sizeof(Float64)*(5*IZX+4),1)
  chord = unsafe_wrap(Array,cr05+sizeof(Float64)*(5*IZX+5),1)
  yimage = unsafe_wrap(Array,cr05+sizeof(Float64)*(5*IZX+6),1)
  wgap = unsafe_wrap(Array,cr05+sizeof(Float64)*(5*IZX+7),IWK)
  waklen = unsafe_wrap(Array,cr05+sizeof(Float64)*(5*IZX+7+IWK),1)

  cr06 = cglobal((:cr06_,libxfoil),Float64)
  gam = unsafe_wrap(Array,cr06,IQX)
  gamu = unsafe_wrap(Array,cr06+sizeof(Float64)*IQX,(IQX,2))
  gam_a = unsafe_wrap(Array,cr06+sizeof(Float64)*(IQX*3),IQX)
  sig = unsafe_wrap(Array,cr06+sizeof(Float64)*(IQX*4),IZX)
  nx = unsafe_wrap(Array,cr06+sizeof(Float64)*(IQX*4+IZX),IZX)
  ny = unsafe_wrap(Array,cr06+sizeof(Float64)*(IQX*4+IZX*2),IZX)
  apanel = unsafe_wrap(Array,cr06+sizeof(Float64)*(IQX*4+IZX*3),IZX)
  sst = unsafe_wrap(Array,cr06+sizeof(Float64)*(IQX*4+IZX*4),1)
  sst_go = unsafe_wrap(Array,cr06+sizeof(Float64)*(IQX*4+IZX*4+1),1)
  sst_gp = unsafe_wrap(Array,cr06+sizeof(Float64)*(IQX*4+IZX*4+2),1)
  gamte = unsafe_wrap(Array,cr06+sizeof(Float64)*(IQX*4+IZX*4+3),1)
  gamte_a = unsafe_wrap(Array,cr06+sizeof(Float64)*(IQX*4+IZX*4+4),1)
  sigte = unsafe_wrap(Array,cr06+sizeof(Float64)*(IQX*4+IZX*4+5),1)
  sigte_a = unsafe_wrap(Array,cr06+sizeof(Float64)*(IQX*4+IZX*4+6),1)
  dste = unsafe_wrap(Array,cr06+sizeof(Float64)*(IQX*4+IZX*4+7),1)
  ante = unsafe_wrap(Array,cr06+sizeof(Float64)*(IQX*4+IZX*4+8),1)
  aste = unsafe_wrap(Array,cr06+sizeof(Float64)*(IQX*4+IZX*4+9),1)

  cr07 = cglobal((:cr07_,libxfoil),Float64)
  ssple = unsafe_wrap(Array,cr07,1)
  sspec = unsafe_wrap(Array,cr07+sizeof(Float64),IBX)
  xspoc = unsafe_wrap(Array,cr07+sizeof(Float64)*(1+IBX),IBX)
  yspoc = unsafe_wrap(Array,cr07+sizeof(Float64)*(1+2*IBX),IBX)
  qgamm = unsafe_wrap(Array,cr07+sizeof(Float64)*(1+3*IBX),IBX)
  qspec = unsafe_wrap(Array,cr07+sizeof(Float64)*(1+4*IBX),(IBX,IPX))
  qspecp = unsafe_wrap(Array,cr07+sizeof(Float64)*(1+4*IBX+IBX*IPX),(IBX,IPX))
  algam = unsafe_wrap(Array,cr07+sizeof(Float64)*(1+4*IBX+2*IBX*IPX),1)
  clgam = unsafe_wrap(Array,cr07+sizeof(Float64)*(2+4*IBX+2*IBX*IPX),1)
  cmgam = unsafe_wrap(Array,cr07+sizeof(Float64)*(3+4*IBX+2*IBX*IPX),1)
  alqsp = unsafe_wrap(Array,cr07+sizeof(Float64)*(4+4*IBX+2*IBX*IPX),IPX)
  clqsp = unsafe_wrap(Array,cr07+sizeof(Float64)*(4+4*IBX+2*IBX*IPX+IPX),IPX)
  cmqsp = unsafe_wrap(Array,cr07+sizeof(Float64)*(4+4*IBX+2*IBX*IPX+2*IPX),IPX)
  qf0 = unsafe_wrap(Array,cr07+sizeof(Float64)*(4+4*IBX+2*IBX*IPX+3*IPX),IQX)
  qf1 = unsafe_wrap(Array,cr07+sizeof(Float64)*(4+4*IBX+2*IBX*IPX+3*IPX+IQX),IQX)
  qf2 = unsafe_wrap(Array,cr07+sizeof(Float64)*(4+4*IBX+2*IBX*IPX+3*IPX+2*IQX),IQX)
  qf3 = unsafe_wrap(Array,cr07+sizeof(Float64)*(4+4*IBX+2*IBX*IPX+3*IPX+3*IQX),IQX)
  qdof0 = unsafe_wrap(Array,cr07+sizeof(Float64)*(4+4*IBX+2*IBX*IPX+3*IPX+4*IQX),1)
  qdof1 = unsafe_wrap(Array,cr07+sizeof(Float64)*(5+4*IBX+2*IBX*IPX+3*IPX+4*IQX),1)
  qdof2 = unsafe_wrap(Array,cr07+sizeof(Float64)*(6+4*IBX+2*IBX*IPX+3*IPX+4*IQX),1)
  qdof3 = unsafe_wrap(Array,cr07+sizeof(Float64)*(7+4*IBX+2*IBX*IPX+3*IPX+4*IQX),1)
  clspec = unsafe_wrap(Array,cr07+sizeof(Float64)*(8+4*IBX+2*IBX*IPX+3*IPX+4*IQX),1)
  ffilt = unsafe_wrap(Array,cr07+sizeof(Float64)*(9+4*IBX+2*IBX*IPX+3*IPX+4*IQX),1)

  cr09 = cglobal((:cr09_,libxfoil),Float64)
  adeg = unsafe_wrap(Array,cr09+0*sizeof(Float64),1)
  alfa = unsafe_wrap(Array,cr09+1*sizeof(Float64),1)
  awake = unsafe_wrap(Array,cr09+2*sizeof(Float64),1)
  mvisc = unsafe_wrap(Array,cr09+3*sizeof(Float64),1)
  avisc = unsafe_wrap(Array,cr09+4*sizeof(Float64),1)
  xcmref = unsafe_wrap(Array,cr09+5*sizeof(Float64),1)
  ycmref = unsafe_wrap(Array,cr09+6*sizeof(Float64),1)
  cl = unsafe_wrap(Array,cr09+7*sizeof(Float64),1)
  cm = unsafe_wrap(Array,cr09+8*sizeof(Float64),1)
  cd = unsafe_wrap(Array,cr09+9*sizeof(Float64),1)
  cdp = unsafe_wrap(Array,cr09+10*sizeof(Float64),1)
  cdf = unsafe_wrap(Array,cr09+11*sizeof(Float64),1)
  cl_alf = unsafe_wrap(Array,cr09+12*sizeof(Float64),1)
  cl_msq = unsafe_wrap(Array,cr09+13*sizeof(Float64),1)
  psio = unsafe_wrap(Array,cr09+14*sizeof(Float64),1)
  circ = unsafe_wrap(Array,cr09+15*sizeof(Float64),1)
  cosa = unsafe_wrap(Array,cr09+16*sizeof(Float64),1)
  sina = unsafe_wrap(Array,cr09+17*sizeof(Float64),1)
  qinf = unsafe_wrap(Array,cr09+18*sizeof(Float64),1)
  gamma = unsafe_wrap(Array,cr09+19*sizeof(Float64),1)
  gamm1 = unsafe_wrap(Array,cr09+20*sizeof(Float64),1)
  minf1 = unsafe_wrap(Array,cr09+21*sizeof(Float64),1)
  minf = unsafe_wrap(Array,cr09+22*sizeof(Float64),1)
  minf_cl = unsafe_wrap(Array,cr09+23*sizeof(Float64),1)
  tklam = unsafe_wrap(Array,cr09+24*sizeof(Float64),1)
  tkl_msq = unsafe_wrap(Array,cr09+25*sizeof(Float64),1)
  cpstar = unsafe_wrap(Array,cr09+26*sizeof(Float64),1)
  qstar = unsafe_wrap(Array,cr09+27*sizeof(Float64),1)
  cpmn = unsafe_wrap(Array,cr09+28*sizeof(Float64),1)
  cpmni = unsafe_wrap(Array,cr09+29*sizeof(Float64),1)
  cpmnv = unsafe_wrap(Array,cr09+30*sizeof(Float64),1)
  xcpmni = unsafe_wrap(Array,cr09+31*sizeof(Float64),1)
  xcpmnv = unsafe_wrap(Array,cr09+32*sizeof(Float64),1)

  cr10 = cglobal((:cr10_,libxfoil),Float64)
  xpref = unsafe_wrap(Array,cr10,IQX)
  cpref = unsafe_wrap(Array,cr10+sizeof(Float64)*IQX,IQX)
  verspol = unsafe_wrap(Array,cr10+sizeof(Float64)*(2*IQX),NPX)
  cpolxy = unsafe_wrap(Array,cr10+sizeof(Float64)*(2*IQX+NPX),(IQX,2,NPX))
  machp1 = unsafe_wrap(Array,cr10+sizeof(Float64)*(2*IQX+NPX+IQX*2*NPX),NPX)
  reynp1 = unsafe_wrap(Array,cr10+sizeof(Float64)*(2*IQX+2*NPX+IQX*2*NPX),NPX)
  acritp = unsafe_wrap(Array,cr10+sizeof(Float64)*(2*IQX+3*NPX+IQX*2*NPX),NPX)
  xstripp = unsafe_wrap(Array,cr10+sizeof(Float64)*(2*IQX+4*NPX+IQX*2*NPX),(ISX,NPX))

  cr11= cglobal((:cr11_,libxfoil),Float64)
  pi = unsafe_wrap(Array,cr11+sizeof(Float64)*0,1)
  hopi = unsafe_wrap(Array,cr11+sizeof(Float64)*1,1)
  qopi = unsafe_wrap(Array,cr11+sizeof(Float64)*2,1)
  dtor = unsafe_wrap(Array,cr11+sizeof(Float64)*3,1)

  cr12= cglobal((:cr12_,libxfoil),Float64)
  cvpar = unsafe_wrap(Array,cr12+sizeof(Float64)*0,1)
  cterat = unsafe_wrap(Array,cr12+sizeof(Float64)*1,1)
  ctrrat = unsafe_wrap(Array,cr12+sizeof(Float64)*2,1)
  xsref1 = unsafe_wrap(Array,cr12+sizeof(Float64)*3,1)
  xsref2 = unsafe_wrap(Array,cr12+sizeof(Float64)*4,1)
  xpref1 = unsafe_wrap(Array,cr12+sizeof(Float64)*5,1)
  xpref2 = unsafe_wrap(Array,cr12+sizeof(Float64)*6,1)

  cr13 = cglobal((:cr12_,libxfoil),Float64)
  size = unsafe_wrap(Array,cr13+sizeof(Float64)*0,1)
  scrnfr = unsafe_wrap(Array,cr13+sizeof(Float64)*1,1)
  plotar = unsafe_wrap(Array,cr13+sizeof(Float64)*2,1)
  pfac = unsafe_wrap(Array,cr13+sizeof(Float64)*3,1)
  qfac = unsafe_wrap(Array,cr13+sizeof(Float64)*4,1)
  vfac = unsafe_wrap(Array,cr13+sizeof(Float64)*5,1)
  xwind = unsafe_wrap(Array,cr13+sizeof(Float64)*6,1)
  ywind = unsafe_wrap(Array,cr13+sizeof(Float64)*7,1)
  xpage = unsafe_wrap(Array,cr13+sizeof(Float64)*8,1)
  ypage = unsafe_wrap(Array,cr13+sizeof(Float64)*9,1)
  xmarg = unsafe_wrap(Array,cr13+sizeof(Float64)*10,1)
  ymarg = unsafe_wrap(Array,cr13+sizeof(Float64)*11,1)
  ch = unsafe_wrap(Array,cr13+sizeof(Float64)*12,1)
  chg = unsafe_wrap(Array,cr13+sizeof(Float64)*13,1)
  chq = unsafe_wrap(Array,cr13+sizeof(Float64)*14,1)
  xofair = unsafe_wrap(Array,cr13+sizeof(Float64)*15,1)
  yofair = unsafe_wrap(Array,cr13+sizeof(Float64)*16,1)
  facair = unsafe_wrap(Array,cr13+sizeof(Float64)*17,1)
  xofa = unsafe_wrap(Array,cr13+sizeof(Float64)*18,1)
  yofa = unsafe_wrap(Array,cr13+sizeof(Float64)*19,1)
  faca = unsafe_wrap(Array,cr13+sizeof(Float64)*20,1)
  uprwt = unsafe_wrap(Array,cr13+sizeof(Float64)*21,1)
  cpmin = unsafe_wrap(Array,cr13+sizeof(Float64)*22,1)
  cpmax = unsafe_wrap(Array,cr13+sizeof(Float64)*23,1)
  cpdel = unsafe_wrap(Array,cr13+sizeof(Float64)*24,1)
  cpolplf = unsafe_wrap(Array,cr13+sizeof(Float64)*25,(3,4))
  xcdwid = unsafe_wrap(Array,cr13+sizeof(Float64)*(25+3*4),1)
  xalwid = unsafe_wrap(Array,cr13+sizeof(Float64)*(26+3*4),1)
  xocwid = unsafe_wrap(Array,cr13+sizeof(Float64)*(27+3*4),1)

  cr14 = cglobal((:cr14_,libxfoil),Float64)
  xb = unsafe_wrap(Array,cr14,IBX)
  yb = unsafe_wrap(Array,cr14+sizeof(Float64)*IBX,IBX)
  xbp = unsafe_wrap(Array,cr14+sizeof(Float64)*(2*IBX),IBX)
  ybp = unsafe_wrap(Array,cr14+sizeof(Float64)*(3*IBX),IBX)
  sb = unsafe_wrap(Array,cr14+sizeof(Float64)*(4*IBX),IBX)
  snew = unsafe_wrap(Array,cr14+sizeof(Float64)*(5*IBX),4*IBX)
  xbf = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX),1)
  ybf = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+1),1)
  xof = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+2),1)
  yof = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+3),1)
  hmom = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+4),1)
  hfx = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+5),1)
  hfy = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+6),1)
  xbmin = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+7),1)
  xbmax = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+8),1)
  ybmin = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+9),1)
  ybmax = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+10),1)
  sble = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+11),1)
  chordb = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+12),1)
  areab = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+13),1)
  radble = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+14),1)
  angbte = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+15),1)
  ei11ba = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+16),1)
  ei22ba = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+17),1)
  apx1ba = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+18),1)
  apx2ba = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+19),1)
  ei11bt = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+20),1)
  ei22bt = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+21),1)
  apx1bt = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+22),1)
  apx2bt = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+23),1)
  thickb = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+24),1)
  cambrb = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+25),1)
  xcm = unsafe_wrap(Array,cr14+sizeof(Float64)*(9*IBX+26),2*IBX)
  ycm = unsafe_wrap(Array,cr14+sizeof(Float64)*(11*IBX+26),2*IBX)
  scm = unsafe_wrap(Array,cr14+sizeof(Float64)*(13*IBX+26),2*IBX)
  xcmp = unsafe_wrap(Array,cr14+sizeof(Float64)*(15*IBX+26),2*IBX)
  ycmp = unsafe_wrap(Array,cr14+sizeof(Float64)*(17*IBX+36),2*IBX)
  xtk = unsafe_wrap(Array,cr14+sizeof(Float64)*(19*IBX+36),2*IBX)
  ytk = unsafe_wrap(Array,cr14+sizeof(Float64)*(21*IBX+36),2*IBX)
  stk = unsafe_wrap(Array,cr14+sizeof(Float64)*(23*IBX+36),2*IBX)
  xtkp = unsafe_wrap(Array,cr14+sizeof(Float64)*(25*IBX+36),2*IBX)
  ytkp = unsafe_wrap(Array,cr14+sizeof(Float64)*(27*IBX+36),2*IBX)

  cr15 = cglobal((:cr15_,libxfoil),Float64)
  xssi = unsafe_wrap(Array,cr15,(IVX,ISX))
  uedg = unsafe_wrap(Array,cr15+sizeof(Float64)*(IVX*ISX),(IVX,ISX))
  uinv = unsafe_wrap(Array,cr15+sizeof(Float64)*(2*IVX*ISX),(IVX,ISX))
  mass = unsafe_wrap(Array,cr15+sizeof(Float64)*(3*IVX*ISX),(IVX,ISX))
  thet = unsafe_wrap(Array,cr15+sizeof(Float64)*(4*IVX*ISX),(IVX,ISX))
  dstr = unsafe_wrap(Array,cr15+sizeof(Float64)*(5*IVX*ISX),(IVX,ISX))
  ctau = unsafe_wrap(Array,cr15+sizeof(Float64)*(6*IVX*ISX),(IVX,ISX))
  delt = unsafe_wrap(Array,cr15+sizeof(Float64)*(7*IVX*ISX),(IVX,ISX))
  uslp = unsafe_wrap(Array,cr15+sizeof(Float64)*(8*IVX*ISX),(IVX,ISX))
  guxq = unsafe_wrap(Array,cr15+sizeof(Float64)*(9*IVX*ISX),(IVX,ISX))
  guxd = unsafe_wrap(Array,cr15+sizeof(Float64)*(10*IVX*ISX),(IVX,ISX))
  tau = unsafe_wrap(Array,cr15+sizeof(Float64)*(11*IVX*ISX),(IVX,ISX))
  dis = unsafe_wrap(Array,cr15+sizeof(Float64)*(12*IVX*ISX),(IVX,ISX))
  ctq = unsafe_wrap(Array,cr15+sizeof(Float64)*(13*IVX*ISX),(IVX,ISX))
  vti = unsafe_wrap(Array,cr15+sizeof(Float64)*(14*IVX*ISX),(IVX,ISX))
  reinf1 = unsafe_wrap(Array,cr15+sizeof(Float64)*(15*IVX*ISX),1)
  reinf = unsafe_wrap(Array,cr15+sizeof(Float64)*(15*IVX*ISX+1),1)
  reinf_cl = unsafe_wrap(Array,cr15+sizeof(Float64)*(15*IVX*ISX+2),1)
  acrit = unsafe_wrap(Array,cr15+sizeof(Float64)*(15*IVX*ISX+3),1)
  xstrip = unsafe_wrap(Array,cr15+sizeof(Float64)*(15*IVX*ISX+4),ISX)
  xoctr = unsafe_wrap(Array,cr15+sizeof(Float64)*(15*IVX*ISX+4+ISX),ISX)
  yoctr = unsafe_wrap(Array,cr15+sizeof(Float64)*(15*IVX*ISX+4+2*ISX),ISX)
  xssitr = unsafe_wrap(Array,cr15+sizeof(Float64)*(15*IVX*ISX+4+3*ISX),ISX)
  uinv_a = unsafe_wrap(Array,cr15+sizeof(Float64)*(15*IVX*ISX+4+4*ISX),(IVX,ISX))

  cr17 = cglobal((:cr17_,libxfoil),Float64)
  rmsbl = unsafe_wrap(Array,cr17,1)
  rmxbl = unsafe_wrap(Array,cr17+sizeof(Float64),1)
  rlx = unsafe_wrap(Array,cr17+2*sizeof(Float64),1)
  vaccel = unsafe_wrap(Array,cr17+3*sizeof(Float64),1)

  cr18 = cglobal((:cr18_,libxfoil),Float64)
  xsf = unsafe_wrap(Array,cr18,1)
  ysf = unsafe_wrap(Array,cr18+sizeof(Float64),1)
  xoff = unsafe_wrap(Array,cr18+sizeof(Float64)*2,1)
  yoff = unsafe_wrap(Array,cr18+sizeof(Float64)*3,1)
  xgmin = unsafe_wrap(Array,cr18+sizeof(Float64)*4,1)
  xgmax = unsafe_wrap(Array,cr18+sizeof(Float64)*5,1)
  ygmin = unsafe_wrap(Array,cr18+sizeof(Float64)*6,1)
  ygmax = unsafe_wrap(Array,cr18+sizeof(Float64)*7,1)
  dxyg = unsafe_wrap(Array,cr18+sizeof(Float64)*8,1)
  xcmin = unsafe_wrap(Array,cr18+sizeof(Float64)*9,1)
  xcmax = unsafe_wrap(Array,cr18+sizeof(Float64)*10,1)
  ycmin = unsafe_wrap(Array,cr18+sizeof(Float64)*11,1)
  ycmax = unsafe_wrap(Array,cr18+sizeof(Float64)*12,1)
  dxyc = unsafe_wrap(Array,cr18+sizeof(Float64)*13,1)
  dyoffc = unsafe_wrap(Array,cr18+sizeof(Float64)*14,1)
  xpmin = unsafe_wrap(Array,cr18+sizeof(Float64)*15,1)
  xpmax = unsafe_wrap(Array,cr18+sizeof(Float64)*16,1)
  ypmin = unsafe_wrap(Array,cr18+sizeof(Float64)*17,1)
  ypmax = unsafe_wrap(Array,cr18+sizeof(Float64)*18,1)
  dxyp = unsafe_wrap(Array,cr18+sizeof(Float64)*19,1)
  dyoffp = unsafe_wrap(Array,cr18+sizeof(Float64)*20,1)
  ysfp = unsafe_wrap(Array,cr18+sizeof(Float64)*21,1)
  gtick = unsafe_wrap(Array,cr18+sizeof(Float64)*22,1)

  qmat = cglobal((:qmat_,libxfoil),Float64)
  q = unsafe_wrap(Array,qmat,(IQX,IQX))
  dq = unsafe_wrap(Array,qmat+sizeof(Float64)*(IQX*IQX),IQX)
  dzdg = unsafe_wrap(Array,qmat+sizeof(Float64)*(IQX^2+IQX),IQX)
  dzdn = unsafe_wrap(Array,qmat+sizeof(Float64)*(IQX^2+2*IQX),IQX)
  dzdm = unsafe_wrap(Array,qmat+sizeof(Float64)*(IQX^2+3*IQX),IZX)
  dqdg = unsafe_wrap(Array,qmat+sizeof(Float64)*(IQX^2+3*IQX+IZX),IQX)
  dqdm = unsafe_wrap(Array,qmat+sizeof(Float64)*(IQX^2+4*IQX+IZX),IZX)
  qtan1 = unsafe_wrap(Array,qmat+sizeof(Float64)*(IQX^2+4*IQX+2*IZX),1)
  qtan2 = unsafe_wrap(Array,qmat+sizeof(Float64)*(IQX^2+4*IQX+2*IZX+1),1)
  z_qinf = unsafe_wrap(Array,qmat+sizeof(Float64)*(IQX^2+4*IQX+2*IZX+2),1)
  z_alfa = unsafe_wrap(Array,qmat+sizeof(Float64)*(IQX^2+4*IQX+2*IZX+3),1)
  z_qdof0 = unsafe_wrap(Array,qmat+sizeof(Float64)*(IQX^2+4*IQX+2*IZX+4),1)
  z_qdof1 = unsafe_wrap(Array,qmat+sizeof(Float64)*(IQX^2+4*IQX+2*IZX+5),1)
  z_qdof2 = unsafe_wrap(Array,qmat+sizeof(Float64)*(IQX^2+4*IQX+2*IZX+6),1)
  z_qdof3 = unsafe_wrap(Array,qmat+sizeof(Float64)*(IQX^2+4*IQX+2*IZX+7),1)

  vmat = cglobal((:vmat_,libxfoil),Float64)
  va = unsafe_wrap(Array,vmat,(3,2,IZX))
  vb = unsafe_wrap(Array,vmat+sizeof(Float64)*(3*2*IZX),(3,2,IZX))
  vdel = unsafe_wrap(Array,vmat+sizeof(Float64)*(2*3*2*IZX),(3,2,IZX))
  vm = unsafe_wrap(Array,vmat+sizeof(Float64)*(3*3*2*IZX),(3,IZX,IZX))
  vz = unsafe_wrap(Array,vmat+sizeof(Float64)*(3*3*2*IZX+IZX*IZX),(3,2))

  ci01 = cglobal((:ci01_,libxfoil),Int32)
  iq1 = unsafe_wrap(Array,ci01,1)
  iq2 = unsafe_wrap(Array,ci01+sizeof(Int32),1)
  nsp = unsafe_wrap(Array,ci01+sizeof(Int32)*2,1)
  nqsp = unsafe_wrap(Array,ci01+sizeof(Int32)*3,1)
  kqtarg = unsafe_wrap(Array,ci01+sizeof(Int32)*4,1)
  iacqsp = unsafe_wrap(Array,ci01+sizeof(Int32)*5,1)
  nc1 = unsafe_wrap(Array,ci01+sizeof(Int32)*6,1)
  nname = unsafe_wrap(Array,ci01+sizeof(Int32)*7,1)
  nprefix = unsafe_wrap(Array,ci01+sizeof(Int32)*8,1)

  ci03 = cglobal((:ci03_,libxfoil),Int32)
  ncpref = unsafe_wrap(Array,ci03,1)
  napol = unsafe_wrap(Array,ci03+sizeof(Int32),NPX)
  npol = unsafe_wrap(Array,ci03+sizeof(Int32)*(1+NPX),1)
  ipact = unsafe_wrap(Array,ci03+sizeof(Int32)*(2+NPX),1)
  nlref = unsafe_wrap(Array,ci03+sizeof(Int32)*(3+NPX),1)
  icolp = unsafe_wrap(Array,ci03+sizeof(Int32)*(4+NPX),NPX)
  icolr = unsafe_wrap(Array,ci03+sizeof(Int32)*(4+2*NPX),NPX)
  imatyp = unsafe_wrap(Array,ci03+sizeof(Int32)*(4+3*NPX),NPX)
  iretyp = unsafe_wrap(Array,ci03+sizeof(Int32)*(4+4*NPX),NPX)
  nxypol = unsafe_wrap(Array,ci03+sizeof(Int32)*(4+5*NPX),NPX)
  npolref = unsafe_wrap(Array,ci03+sizeof(Int32)*(4+6*NPX),1)
  ndref = unsafe_wrap(Array,ci03+sizeof(Int32)*(5+6*NPX),(4,NPX))

  ci04 = cglobal((:ci04_,libxfoil),Int32)
  n = unsafe_wrap(Array,ci04,1)
  nb = unsafe_wrap(Array,ci04+sizeof(Int32)*1,1)
  nw = unsafe_wrap(Array,ci04+sizeof(Int32)*2,1)
  npan = unsafe_wrap(Array,ci04+sizeof(Int32)*3,1)
  ist = unsafe_wrap(Array,ci04+sizeof(Int32)*4,1)
  kimage = unsafe_wrap(Array,ci04+sizeof(Int32)*5,1)
  itmax = unsafe_wrap(Array,ci04+sizeof(Int32)*6,1)
  nseqex = unsafe_wrap(Array,ci04+sizeof(Int32)*7,1)
  retyp = unsafe_wrap(Array,ci04+sizeof(Int32)*8,1)
  matyp = unsafe_wrap(Array,ci04+sizeof(Int32)*9,1)
  aijpix = unsafe_wrap(Array,ci04+sizeof(Int32)*10,ISX)
  idev = unsafe_wrap(Array,ci04+sizeof(Int32)*(10+ISX),1)
  idevrp = unsafe_wrap(Array,ci04+sizeof(Int32)*(11+ISX),1)
  ipslu = unsafe_wrap(Array,ci04+sizeof(Int32)*(12+ISX),1)
  ncolor = unsafe_wrap(Array,ci04+sizeof(Int32)*(13+ISX),1)
  icols = unsafe_wrap(Array,ci04+sizeof(Int32)*(14+ISX),ISX)
  nover = unsafe_wrap(Array,ci04+sizeof(Int32)*(14+2*ISX),1)
  ncm = unsafe_wrap(Array,ci04+sizeof(Int32)*(15+2*ISX),1)
  ntk = unsafe_wrap(Array,ci04+sizeof(Int32)*(16+2*ISX),1)

  ci05 = cglobal((:ci05_,libxfoil),Int32)
  iblte = unsafe_wrap(Array,ci05,ISX)
  nbl = unsafe_wrap(Array,ci05+sizeof(Int32)*ISX,ISX)
  ipan = unsafe_wrap(Array,ci05+sizeof(Int32)*(2*ISX),(IVX,ISX))
  isys = unsafe_wrap(Array,ci05+sizeof(Int32)*(2*ISX+IVX*ISX),(IVX,ISX))
  nsys = unsafe_wrap(Array,ci05+sizeof(Int32)*(2*ISX+2*IVX*ISX),1)
  itran = unsafe_wrap(Array,ci05+sizeof(Int32)*(2*ISX+2*IVX*ISX+1),ISX)

  ci06 = cglobal((:ci06_,libxfoil),Int32)
  imxbl = unsafe_wrap(Array,ci06,1)
  ismxbl = unsafe_wrap(Array,ci06+sizeof(Int32),1)

  cl01 = cglobal((:cl01_,libxfoil),Int32)
  ok = unsafe_wrap(Array,cl01+sizeof(Int32)*0,1)
  limage = unsafe_wrap(Array,cl01+sizeof(Int32)*1,1)
  sharp = unsafe_wrap(Array,cl01+sizeof(Int32)*2,1)
  lgamu = unsafe_wrap(Array,cl01+sizeof(Int32)*3,1)
  lqinu = unsafe_wrap(Array,cl01+sizeof(Int32)*4,1)
  lvisc = unsafe_wrap(Array,cl01+sizeof(Int32)*5,1)
  lalfa = unsafe_wrap(Array,cl01+sizeof(Int32)*6,1)
  lwake = unsafe_wrap(Array,cl01+sizeof(Int32)*7,1)
  lpacc = unsafe_wrap(Array,cl01+sizeof(Int32)*8,1)
  lblini = unsafe_wrap(Array,cl01+sizeof(Int32)*9,1)
  lipan = unsafe_wrap(Array,cl01+sizeof(Int32)*10,1)
  lqaij = unsafe_wrap(Array,cl01+sizeof(Int32)*11,1)
  ladij = unsafe_wrap(Array,cl01+sizeof(Int32)*12,1)
  lwdij = unsafe_wrap(Array,cl01+sizeof(Int32)*13,1)
  lcpxx = unsafe_wrap(Array,cl01+sizeof(Int32)*14,1)
  lqvdes = unsafe_wrap(Array,cl01+sizeof(Int32)*15,1)
  lqrefl = unsafe_wrap(Array,cl01+sizeof(Int32)*16,1)
  lqspec = unsafe_wrap(Array,cl01+sizeof(Int32)*17,1)
  lvconv = unsafe_wrap(Array,cl01+sizeof(Int32)*18,1)
  lcpref = unsafe_wrap(Array,cl01+sizeof(Int32)*19,1)
  lclock = unsafe_wrap(Array,cl01+sizeof(Int32)*20,1)
  lpfile = unsafe_wrap(Array,cl01+sizeof(Int32)*21,1)
  lpfilx = unsafe_wrap(Array,cl01+sizeof(Int32)*22,1)
  lppsho = unsafe_wrap(Array,cl01+sizeof(Int32)*23,1)
  lbflap = unsafe_wrap(Array,cl01+sizeof(Int32)*24,1)
  lflap = unsafe_wrap(Array,cl01+sizeof(Int32)*25,1)
  leiw = unsafe_wrap(Array,cl01+sizeof(Int32)*26,1)
  lscini = unsafe_wrap(Array,cl01+sizeof(Int32)*27,1)
  lforef = unsafe_wrap(Array,cl01+sizeof(Int32)*28,1)
  lnorm = unsafe_wrap(Array,cl01+sizeof(Int32)*29,1)
  lgsame = unsafe_wrap(Array,cl01+sizeof(Int32)*30,1)
  lplcam = unsafe_wrap(Array,cl01+sizeof(Int32)*31,1)
  lqsym = unsafe_wrap(Array,cl01+sizeof(Int32)*32,1)
  lgsym = unsafe_wrap(Array,cl01+sizeof(Int32)*33,1)
  lqgrid = unsafe_wrap(Array,cl01+sizeof(Int32)*34,1)
  lggrid = unsafe_wrap(Array,cl01+sizeof(Int32)*35,1)
  lgtick = unsafe_wrap(Array,cl01+sizeof(Int32)*36,1)
  lqslop = unsafe_wrap(Array,cl01+sizeof(Int32)*37,1)
  lgslop = unsafe_wrap(Array,cl01+sizeof(Int32)*38,1)
  lcslop = unsafe_wrap(Array,cl01+sizeof(Int32)*39,1)
  lqsppl = unsafe_wrap(Array,cl01+sizeof(Int32)*40,1)
  lgeopl = unsafe_wrap(Array,cl01+sizeof(Int32)*41,1)
  lgparm = unsafe_wrap(Array,cl01+sizeof(Int32)*42,1)
  lcpgrd = unsafe_wrap(Array,cl01+sizeof(Int32)*43,1)
  lblgrd = unsafe_wrap(Array,cl01+sizeof(Int32)*44,1)
  lblsym = unsafe_wrap(Array,cl01+sizeof(Int32)*45,1)
  lplot = unsafe_wrap(Array,cl01+sizeof(Int32)*46,1)
  lsym = unsafe_wrap(Array,cl01+sizeof(Int32)*47,1)
  liqset = unsafe_wrap(Array,cl01+sizeof(Int32)*48,1)
  lclip = unsafe_wrap(Array,cl01+sizeof(Int32)*49,1)
  lvlab = unsafe_wrap(Array,cl01+sizeof(Int32)*50,1)
  lcurs = unsafe_wrap(Array,cl01+sizeof(Int32)*51,1)
  lland = unsafe_wrap(Array,cl01+sizeof(Int32)*52,1)
  lpgrid = unsafe_wrap(Array,cl01+sizeof(Int32)*53,1)
  lpcdw = unsafe_wrap(Array,cl01+sizeof(Int32)*54,1)
  lplist = unsafe_wrap(Array,cl01+sizeof(Int32)*55,1)
  lplegn = unsafe_wrap(Array,cl01+sizeof(Int32)*56,1)
  lcminp = unsafe_wrap(Array,cl01+sizeof(Int32)*57,1)
  lhmomp = unsafe_wrap(Array,cl01+sizeof(Int32)*58,1)
  lexitflag = unsafe_wrap(Array,cl01+sizeof(Int32)*59,1)

  cl02 = cglobal((:cl02_,libxfoil),Int32)
  tforce = unsafe_wrap(Array,cl02,ISX)

  cc01 = cglobal((:cc01_,libxfoil),UInt8)
  fname = unsafe_string(cc01+sizeof(UInt8)*0,64)
  name = unsafe_string(cc01+sizeof(UInt8)*64,48)
  ispars = unsafe_string(cc01+sizeof(UInt8)*(64+48),80)
  oname = unsafe_string(cc01+sizeof(UInt8)*(64+48+80),64)
  prefix = unsafe_string(cc01+sizeof(UInt8)*(2*64+48+80),64)
  pfname = unsafe_string(cc01+sizeof(UInt8)*(3*64+48+80),64)
  pfnamx = unsafe_string(cc01+sizeof(UInt8)*(4*64+48+80),64)
  namepol = unsafe_string(cc01+sizeof(UInt8)*(5*64+48+80),48)
  nameref = unsafe_string(cc01+sizeof(UInt8)*(5*64+2*48+80),48)

  cc02 = cglobal((:cc02_,libxfoil),UInt8)
  labref = unsafe_string(cc02,32)

  cc03 = cglobal((:cc03_,libxfoil),UInt8)
  vmxbl = unsafe_string(cc03,1)

  return globalstruct(
    version,
    aij, dij,
    qinv, qvis, cpi, cpv, qinvu, qinv_a,
    x, y, xp, yp, s, sle, xle, yle, xte, yte, chord, yimage, wgap, waklen,
    gam, gamu, gam_a, sig, nx, ny, apanel, sst, sst_go, sst_gp, gamte, gamte_a,
    sigte, sigte_a, dste, ante, aste,
    ssple, sspec, xspoc, yspoc, qgamm, qspec, qspecp, algam, clgam, cmgam, alqsp,
    clqsp, cmqsp, qf0, qf1, qf2, qf3, qdof0, qdof1, qdof2, qdof3, clspec, ffilt,
    adeg, alfa, awake, mvisc, avisc, xcmref, ycmref, cl, cm, cd, cdp, cdf,
    cl_alf, cl_msq, psio, circ, cosa, sina, qinf, gamma, gamm1, minf1, minf,
    minf_cl, tklam, tkl_msq, cpstar, qstar, cpmn, cpmni, cpmnv, xcpmni, xcpmnv,
    xpref, cpref, verspol, cpolxy, machp1, reynp1, acritp, xstripp,
    pi, hopi, qopi, dtor,
    cvpar, cterat, ctrrat, xsref1, xsref2, xpref1, xpref2,
    size, scrnfr, plotar, pfac, qfac, vfac, xwind, ywind, xpage, ypage, xmarg,
    ymarg, ch, chg, chq, xofair, yofair, facair, xofa, yofa, faca, uprwt, cpmin,
    cpmax, cpdel, cpolplf, xcdwid, xalwid, xocwid,
    xb, yb, xbp, ybp, sb, snew, xbf, ybf, xof, yof, hmom, hfx, hfy, xbmin,
    xbmax, ybmin, ybmax, sble, chordb, areab, radble, angbte, ei11ba, ei22ba,
    apx1ba, apx2ba, ei11bt, ei22bt, apx1bt, apx2bt, thickb, cambrb, xcm, ycm,
    scm, xcmp, ycmp, xtk, ytk, stk, xtkp, ytkp,
    xssi, uedg, uinv, mass, thet, dstr, ctau, delt, uslp, guxq, guxd, tau, dis,
    ctq, vti, reinf1, reinf, reinf_cl, acrit, xstrip, xoctr, yoctr, xssitr,
    uinv_a,
    rmsbl, rmxbl, rlx, vaccel,
    xsf, ysf, xoff, yoff, xgmin, xgmax, ygmin, ygmax, dxyg, xcmin, xcmax, ycmin,
    ycmax, dxyc, dyoffc, xpmin, xpmax, ypmin, ypmax, dxyp, dyoffp, ysfp, gtick,
    q, dq, dzdg, dzdn, dzdm, dqdg, dqdm, qtan1, qtan2, z_qinf, z_alfa, z_qdof0,
    z_qdof1, z_qdof2, z_qdof3,
    va, vb, vdel, vm, vz,
    iq1, iq2, nsp, nqsp, kqtarg, iacqsp, nc1, nname, nprefix,
    ncpref, napol, npol, ipact, nlref, icolp, icolr, imatyp, iretyp, nxypol,
    npolref, ndref,
    n, nb, nw, npan, ist, kimage, itmax, nseqex, retyp, matyp, aijpix, idev,
    idevrp, ipslu, ncolor, icols, nover, ncm, ntk,
    iblte, nbl, ipan, isys, nsys, itran,
    imxbl, ismxbl,
    ok, limage, sharp, lgamu, lqinu, lvisc, lalfa, lwake, lpacc, lblini, lipan, lqaij,
    ladij, lwdij, lcpxx, lqvdes, lqrefl, lqspec, lvconv, lcpref, lclock, lpfile, lpfilx,
    lppsho, lbflap, lflap, leiw, lscini, lforef, lnorm, lgsame, lplcam, lqsym, lgsym,
    lqgrid, lggrid, lgtick, lqslop, lgslop, lcslop, lqsppl, lgeopl, lgparm, lcpgrd,
    lblgrd, lblsym, lplot, lsym, liqset, lclip, lvlab, lcurs, lland, lpgrid, lpcdw,
    lplist, lplegn, lcminp, lhmomp, lexitflag,
    tforce,
    fname, name, ispars, oname, prefix, pfname, pfnamx, namepol, nameref,
    labref,
    vmxbl)
end
