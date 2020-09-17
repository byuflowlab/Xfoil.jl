struct globalstruct_cs
  #cr01
  version::Array{ComplexF64,1}
  #cr03
  aij::Array{ComplexF64,2}
  dij::Array{ComplexF64,2}
  #cr04
  qinv::Array{ComplexF64,1}
  qvis::Array{ComplexF64,1}
  cpi::Array{ComplexF64,1}
  cpv::Array{ComplexF64,1}
  qinvu::Array{ComplexF64,2}
  qinv_a::Array{ComplexF64,1}
  #cr05
  x::Array{ComplexF64,1}
  y::Array{ComplexF64,1}
  xp::Array{ComplexF64,1}
  yp::Array{ComplexF64,1}
  s::Array{ComplexF64,1}
  sle::Array{ComplexF64,1}
  xle::Array{ComplexF64,1}
  yle::Array{ComplexF64,1}
  xte::Array{ComplexF64,1}
  yte::Array{ComplexF64,1}
  chord::Array{ComplexF64,1}
  yimage::Array{ComplexF64,1}
  wgap::Array{ComplexF64,1}
  waklen::Array{ComplexF64,1}
  #cr06
  gam::Array{ComplexF64,1}
  gamu::Array{ComplexF64,2}
  gam_a::Array{ComplexF64,1}
  sig::Array{ComplexF64,1}
  nx::Array{ComplexF64,1}
  ny::Array{ComplexF64,1}
  apanel::Array{ComplexF64,1}
  sst::Array{ComplexF64,1}
  sst_go::Array{ComplexF64,1}
  sst_gp::Array{ComplexF64,1}
  gamte::Array{ComplexF64,1}
  gamte_a::Array{ComplexF64,1}
  sigte::Array{ComplexF64,1}
  sigte_a::Array{ComplexF64,1}
  dste::Array{ComplexF64,1}
  ante::Array{ComplexF64,1}
  aste::Array{ComplexF64,1}
  #cr07
  ssple::Array{ComplexF64,1}
  sspec::Array{ComplexF64,1}
  xspoc::Array{ComplexF64,1}
  yspoc::Array{ComplexF64,1}
  qgamm::Array{ComplexF64,1}
  qspec::Array{ComplexF64,2}
  qspecp::Array{ComplexF64,2}
  algam::Array{ComplexF64,1}
  clgam::Array{ComplexF64,1}
  cmgam::Array{ComplexF64,1}
  alqsp::Array{ComplexF64,1}
  clqsp::Array{ComplexF64,1}
  cmqsp::Array{ComplexF64,1}
  qf0::Array{ComplexF64,1}
  qf1::Array{ComplexF64,1}
  qf2::Array{ComplexF64,1}
  qf3::Array{ComplexF64,1}
  qdof0::Array{ComplexF64,1}
  qdof1::Array{ComplexF64,1}
  qdof2::Array{ComplexF64,1}
  qdof3::Array{ComplexF64,1}
  clspec::Array{ComplexF64,1}
  ffilt::Array{ComplexF64,1}
  #cr09
  adeg::Array{ComplexF64,1}
  alfa::Array{ComplexF64,1}
  awake::Array{ComplexF64,1}
  mvisc::Array{ComplexF64,1}
  avisc::Array{ComplexF64,1}
  xcmref::Array{ComplexF64,1}
  ycmref::Array{ComplexF64,1}
  cl::Array{ComplexF64,1}
  cm::Array{ComplexF64,1}
  cd::Array{ComplexF64,1}
  cdp::Array{ComplexF64,1}
  cdf::Array{ComplexF64,1}
  cl_alf::Array{ComplexF64,1}
  cl_msq::Array{ComplexF64,1}
  psio::Array{ComplexF64,1}
  circ::Array{ComplexF64,1}
  cosa::Array{ComplexF64,1}
  sina::Array{ComplexF64,1}
  qinf::Array{ComplexF64,1}
  gamma::Array{ComplexF64,1}
  gamm1::Array{ComplexF64,1}
  minf1::Array{ComplexF64,1}
  minf::Array{ComplexF64,1}
  minf_cl::Array{ComplexF64,1}
  tklam::Array{ComplexF64,1}
  tkl_msq::Array{ComplexF64,1}
  cpstar::Array{ComplexF64,1}
  qstar::Array{ComplexF64,1}
  cpmn::Array{ComplexF64,1}
  cpmni::Array{ComplexF64,1}
  cpmnv::Array{ComplexF64,1}
  xcpmni::Array{ComplexF64,1}
  xcpmnv::Array{ComplexF64,1}
  #cr10
  xpref::Array{ComplexF64,1}
  cpref::Array{ComplexF64,1}
  verspol::Array{ComplexF64,1}
  cpolxy::Array{ComplexF64,3}
  machp1::Array{ComplexF64,1}
  reynp1::Array{ComplexF64,1}
  acritp::Array{ComplexF64,1}
  xstripp::Array{ComplexF64,2}
  #cr11
  pi::Array{ComplexF64,1}
  hopi::Array{ComplexF64,1}
  qopi::Array{ComplexF64,1}
  dtor::Array{ComplexF64,1}
  #cr12
  cvpar::Array{ComplexF64,1}
  cterat::Array{ComplexF64,1}
  ctrrat::Array{ComplexF64,1}
  xsref1::Array{ComplexF64,1}
  xsref2::Array{ComplexF64,1}
  xpref1::Array{ComplexF64,1}
  xpref2::Array{ComplexF64,1}
  #cr13
  size::Array{ComplexF64,1}
  scrnfr::Array{ComplexF64,1}
  plotar::Array{ComplexF64,1}
  pfac::Array{ComplexF64,1}
  qfac::Array{ComplexF64,1}
  vfac::Array{ComplexF64,1}
  xwind::Array{ComplexF64,1}
  ywind::Array{ComplexF64,1}
  xpage::Array{ComplexF64,1}
  ypage::Array{ComplexF64,1}
  xmarg::Array{ComplexF64,1}
  ymarg::Array{ComplexF64,1}
  ch::Array{ComplexF64,1}
  chg::Array{ComplexF64,1}
  chq::Array{ComplexF64,1}
  xofair::Array{ComplexF64,1}
  yofair::Array{ComplexF64,1}
  facair::Array{ComplexF64,1}
  xofa::Array{ComplexF64,1}
  yofa::Array{ComplexF64,1}
  faca::Array{ComplexF64,1}
  uprwt::Array{ComplexF64,1}
  cpmin::Array{ComplexF64,1}
  cpmax::Array{ComplexF64,1}
  cpdel::Array{ComplexF64,1}
  cpolplf::Array{ComplexF64,2}
  xcdwid::Array{ComplexF64,1}
  xalwid::Array{ComplexF64,1}
  xocwid::Array{ComplexF64,1}
  #cr14
  xb::Array{ComplexF64,1}
  yb::Array{ComplexF64,1}
  xbp::Array{ComplexF64,1}
  ybp::Array{ComplexF64,1}
  sb::Array{ComplexF64,1}
  snew::Array{ComplexF64,1}
  xbf::Array{ComplexF64,1}
  ybf::Array{ComplexF64,1}
  xof::Array{ComplexF64,1}
  yof::Array{ComplexF64,1}
  hmom::Array{ComplexF64,1}
  hfx::Array{ComplexF64,1}
  hfy::Array{ComplexF64,1}
  xbmin::Array{ComplexF64,1}
  xbmax::Array{ComplexF64,1}
  ybmin::Array{ComplexF64,1}
  ybmax::Array{ComplexF64,1}
  sble::Array{ComplexF64,1}
  chordb::Array{ComplexF64,1}
  areab::Array{ComplexF64,1}
  radble::Array{ComplexF64,1}
  angbte::Array{ComplexF64,1}
  ei11ba::Array{ComplexF64,1}
  ei22ba::Array{ComplexF64,1}
  apx1ba::Array{ComplexF64,1}
  apx2ba::Array{ComplexF64,1}
  ei11bt::Array{ComplexF64,1}
  ei22bt::Array{ComplexF64,1}
  apx1bt::Array{ComplexF64,1}
  apx2bt::Array{ComplexF64,1}
  thickb::Array{ComplexF64,1}
  cambrb::Array{ComplexF64,1}
  xcm::Array{ComplexF64,1}
  ycm::Array{ComplexF64,1}
  scm::Array{ComplexF64,1}
  xcmp::Array{ComplexF64,1}
  ycmp::Array{ComplexF64,1}
  xtk::Array{ComplexF64,1}
  ytk::Array{ComplexF64,1}
  stk::Array{ComplexF64,1}
  xtkp::Array{ComplexF64,1}
  ytkp::Array{ComplexF64,1}
  #cr15
  xssi::Array{ComplexF64,2}
  uedg::Array{ComplexF64,2}
  uinv::Array{ComplexF64,2}
  mass::Array{ComplexF64,2}
  thet::Array{ComplexF64,2}
  dstr::Array{ComplexF64,2}
  ctau::Array{ComplexF64,2}
  delt::Array{ComplexF64,2}
  uslp::Array{ComplexF64,2}
  guxq::Array{ComplexF64,2}
  guxd::Array{ComplexF64,2}
  tau::Array{ComplexF64,2}
  dis::Array{ComplexF64,2}
  ctq::Array{ComplexF64,2}
  vti::Array{ComplexF64,2}
  reinf1::Array{ComplexF64,1}
  reinf::Array{ComplexF64,1}
  reinf_cl::Array{ComplexF64,1}
  acrit::Array{ComplexF64,1}
  xstrip::Array{ComplexF64,1}
  xoctr::Array{ComplexF64,1}
  yoctr::Array{ComplexF64,1}
  xssitr::Array{ComplexF64,1}
  uinv_a::Array{ComplexF64,2}
  #cr17
  rmsbl::Array{ComplexF64,1}
  rmxbl::Array{ComplexF64,1}
  rlx::Array{ComplexF64,1}
  vaccel::Array{ComplexF64,1}
  #cr18
  xsf::Array{ComplexF64,1}
  ysf::Array{ComplexF64,1}
  xoff::Array{ComplexF64,1}
  yoff::Array{ComplexF64,1}
  xgmin::Array{ComplexF64,1}
  xgmax::Array{ComplexF64,1}
  ygmin::Array{ComplexF64,1}
  ygmax::Array{ComplexF64,1}
  dxyg::Array{ComplexF64,1}
  xcmin::Array{ComplexF64,1}
  xcmax::Array{ComplexF64,1}
  ycmin::Array{ComplexF64,1}
  ycmax::Array{ComplexF64,1}
  dxyc::Array{ComplexF64,1}
  dyoffc::Array{ComplexF64,1}
  xpmin::Array{ComplexF64,1}
  xpmax::Array{ComplexF64,1}
  ypmin::Array{ComplexF64,1}
  ypmax::Array{ComplexF64,1}
  dxyp::Array{ComplexF64,1}
  dyoffp::Array{ComplexF64,1}
  ysfp::Array{ComplexF64,1}
  gtick::Array{ComplexF64,1}
  #qmat
  q::Array{ComplexF64,2}
  dq::Array{ComplexF64,1}
  dzdg::Array{ComplexF64,1}
  dzdn::Array{ComplexF64,1}
  dzdm::Array{ComplexF64,1}
  dqdg::Array{ComplexF64,1}
  dqdm::Array{ComplexF64,1}
  qtan1::Array{ComplexF64,1}
  qtan2::Array{ComplexF64,1}
  z_qinf::Array{ComplexF64,1}
  z_alfa::Array{ComplexF64,1}
  z_qdof0::Array{ComplexF64,1}
  z_qdof1::Array{ComplexF64,1}
  z_qdof2::Array{ComplexF64,1}
  z_qdof3::Array{ComplexF64,1}
  #vmat
  va::Array{ComplexF64,3}
  vb::Array{ComplexF64,3}
  vdel::Array{ComplexF64,3}
  vm::Array{ComplexF64,3}
  vz::Array{ComplexF64,2}
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
    getglobals_cs()
Returns a globalstruct, which contains fields directly referencing XFOIL's globals
"""
function getglobals_cs()

  cr01 = cglobal((:cr01_,libxfoil_light_cs),ComplexF64)
  version = unsafe_wrap(Array,cr01,1)

  cr03 = cglobal((:cr03_,libxfoil_light_cs),ComplexF64)
  aij = unsafe_wrap(Array,cr03,(IQX,IQX))
  dij = unsafe_wrap(Array,cr03+sizeof(ComplexF64)*IQX^2,(IZX,IZX))

  cr04 = cglobal((:cr04_,libxfoil_light_cs),ComplexF64)
  qinv = unsafe_wrap(Array,cr04,IZX)
  qvis = unsafe_wrap(Array,cr04+sizeof(ComplexF64)*IZX,IZX)
  cpi = unsafe_wrap(Array,cr04+sizeof(ComplexF64)*(2*IZX),IZX)
  cpv = unsafe_wrap(Array,cr04+sizeof(ComplexF64)*(3*IZX),IZX)
  qinvu = unsafe_wrap(Array,cr04+sizeof(ComplexF64)*(4*IZX),(IZX,2))
  qinv_a = unsafe_wrap(Array,cr04+sizeof(ComplexF64)*(6*IZX),IZX)

  cr05 = cglobal((:cr05_,libxfoil_light_cs),ComplexF64)
  x = unsafe_wrap(Array,cr05,IZX)
  y = unsafe_wrap(Array,cr05+sizeof(ComplexF64)*IZX,IZX)
  xp = unsafe_wrap(Array,cr05+sizeof(ComplexF64)*(2*IZX),IZX)
  yp = unsafe_wrap(Array,cr05+sizeof(ComplexF64)*(3*IZX),IZX)
  s = unsafe_wrap(Array,cr05+sizeof(ComplexF64)*(4*IZX),IZX)
  sle = unsafe_wrap(Array,cr05+sizeof(ComplexF64)*(5*IZX),1)
  xle = unsafe_wrap(Array,cr05+sizeof(ComplexF64)*(5*IZX+1),1)
  yle = unsafe_wrap(Array,cr05+sizeof(ComplexF64)*(5*IZX+2),1)
  xte = unsafe_wrap(Array,cr05+sizeof(ComplexF64)*(5*IZX+3),1)
  yte = unsafe_wrap(Array,cr05+sizeof(ComplexF64)*(5*IZX+4),1)
  chord = unsafe_wrap(Array,cr05+sizeof(ComplexF64)*(5*IZX+5),1)
  yimage = unsafe_wrap(Array,cr05+sizeof(ComplexF64)*(5*IZX+6),1)
  wgap = unsafe_wrap(Array,cr05+sizeof(ComplexF64)*(5*IZX+7),IWK)
  waklen = unsafe_wrap(Array,cr05+sizeof(ComplexF64)*(5*IZX+7+IWK),1)

  cr06 = cglobal((:cr06_,libxfoil_light_cs),ComplexF64)
  gam = unsafe_wrap(Array,cr06,IQX)
  gamu = unsafe_wrap(Array,cr06+sizeof(ComplexF64)*IQX,(IQX,2))
  gam_a = unsafe_wrap(Array,cr06+sizeof(ComplexF64)*(IQX*3),IQX)
  sig = unsafe_wrap(Array,cr06+sizeof(ComplexF64)*(IQX*4),IZX)
  nx = unsafe_wrap(Array,cr06+sizeof(ComplexF64)*(IQX*4+IZX),IZX)
  ny = unsafe_wrap(Array,cr06+sizeof(ComplexF64)*(IQX*4+IZX*2),IZX)
  apanel = unsafe_wrap(Array,cr06+sizeof(ComplexF64)*(IQX*4+IZX*3),IZX)
  sst = unsafe_wrap(Array,cr06+sizeof(ComplexF64)*(IQX*4+IZX*4),1)
  sst_go = unsafe_wrap(Array,cr06+sizeof(ComplexF64)*(IQX*4+IZX*4+1),1)
  sst_gp = unsafe_wrap(Array,cr06+sizeof(ComplexF64)*(IQX*4+IZX*4+2),1)
  gamte = unsafe_wrap(Array,cr06+sizeof(ComplexF64)*(IQX*4+IZX*4+3),1)
  gamte_a = unsafe_wrap(Array,cr06+sizeof(ComplexF64)*(IQX*4+IZX*4+4),1)
  sigte = unsafe_wrap(Array,cr06+sizeof(ComplexF64)*(IQX*4+IZX*4+5),1)
  sigte_a = unsafe_wrap(Array,cr06+sizeof(ComplexF64)*(IQX*4+IZX*4+6),1)
  dste = unsafe_wrap(Array,cr06+sizeof(ComplexF64)*(IQX*4+IZX*4+7),1)
  ante = unsafe_wrap(Array,cr06+sizeof(ComplexF64)*(IQX*4+IZX*4+8),1)
  aste = unsafe_wrap(Array,cr06+sizeof(ComplexF64)*(IQX*4+IZX*4+9),1)

  cr07 = cglobal((:cr07_,libxfoil_light_cs),ComplexF64)
  ssple = unsafe_wrap(Array,cr07,1)
  sspec = unsafe_wrap(Array,cr07+sizeof(ComplexF64),IBX)
  xspoc = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(1+IBX),IBX)
  yspoc = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(1+2*IBX),IBX)
  qgamm = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(1+3*IBX),IBX)
  qspec = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(1+4*IBX),(IBX,IPX))
  qspecp = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(1+4*IBX+IBX*IPX),(IBX,IPX))
  algam = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(1+4*IBX+2*IBX*IPX),1)
  clgam = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(2+4*IBX+2*IBX*IPX),1)
  cmgam = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(3+4*IBX+2*IBX*IPX),1)
  alqsp = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(4+4*IBX+2*IBX*IPX),IPX)
  clqsp = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(4+4*IBX+2*IBX*IPX+IPX),IPX)
  cmqsp = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(4+4*IBX+2*IBX*IPX+2*IPX),IPX)
  qf0 = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(4+4*IBX+2*IBX*IPX+3*IPX),IQX)
  qf1 = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(4+4*IBX+2*IBX*IPX+3*IPX+IQX),IQX)
  qf2 = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(4+4*IBX+2*IBX*IPX+3*IPX+2*IQX),IQX)
  qf3 = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(4+4*IBX+2*IBX*IPX+3*IPX+3*IQX),IQX)
  qdof0 = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(4+4*IBX+2*IBX*IPX+3*IPX+4*IQX),1)
  qdof1 = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(5+4*IBX+2*IBX*IPX+3*IPX+4*IQX),1)
  qdof2 = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(6+4*IBX+2*IBX*IPX+3*IPX+4*IQX),1)
  qdof3 = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(7+4*IBX+2*IBX*IPX+3*IPX+4*IQX),1)
  clspec = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(8+4*IBX+2*IBX*IPX+3*IPX+4*IQX),1)
  ffilt = unsafe_wrap(Array,cr07+sizeof(ComplexF64)*(9+4*IBX+2*IBX*IPX+3*IPX+4*IQX),1)

  cr09 = cglobal((:cr09_,libxfoil_light_cs),ComplexF64)
  adeg = unsafe_wrap(Array,cr09+0*sizeof(ComplexF64),1)
  alfa = unsafe_wrap(Array,cr09+1*sizeof(ComplexF64),1)
  awake = unsafe_wrap(Array,cr09+2*sizeof(ComplexF64),1)
  mvisc = unsafe_wrap(Array,cr09+3*sizeof(ComplexF64),1)
  avisc = unsafe_wrap(Array,cr09+4*sizeof(ComplexF64),1)
  xcmref = unsafe_wrap(Array,cr09+5*sizeof(ComplexF64),1)
  ycmref = unsafe_wrap(Array,cr09+6*sizeof(ComplexF64),1)
  cl = unsafe_wrap(Array,cr09+7*sizeof(ComplexF64),1)
  cm = unsafe_wrap(Array,cr09+8*sizeof(ComplexF64),1)
  cd = unsafe_wrap(Array,cr09+9*sizeof(ComplexF64),1)
  cdp = unsafe_wrap(Array,cr09+10*sizeof(ComplexF64),1)
  cdf = unsafe_wrap(Array,cr09+11*sizeof(ComplexF64),1)
  cl_alf = unsafe_wrap(Array,cr09+12*sizeof(ComplexF64),1)
  cl_msq = unsafe_wrap(Array,cr09+13*sizeof(ComplexF64),1)
  psio = unsafe_wrap(Array,cr09+14*sizeof(ComplexF64),1)
  circ = unsafe_wrap(Array,cr09+15*sizeof(ComplexF64),1)
  cosa = unsafe_wrap(Array,cr09+16*sizeof(ComplexF64),1)
  sina = unsafe_wrap(Array,cr09+17*sizeof(ComplexF64),1)
  qinf = unsafe_wrap(Array,cr09+18*sizeof(ComplexF64),1)
  gamma = unsafe_wrap(Array,cr09+19*sizeof(ComplexF64),1)
  gamm1 = unsafe_wrap(Array,cr09+20*sizeof(ComplexF64),1)
  minf1 = unsafe_wrap(Array,cr09+21*sizeof(ComplexF64),1)
  minf = unsafe_wrap(Array,cr09+22*sizeof(ComplexF64),1)
  minf_cl = unsafe_wrap(Array,cr09+23*sizeof(ComplexF64),1)
  tklam = unsafe_wrap(Array,cr09+24*sizeof(ComplexF64),1)
  tkl_msq = unsafe_wrap(Array,cr09+25*sizeof(ComplexF64),1)
  cpstar = unsafe_wrap(Array,cr09+26*sizeof(ComplexF64),1)
  qstar = unsafe_wrap(Array,cr09+27*sizeof(ComplexF64),1)
  cpmn = unsafe_wrap(Array,cr09+28*sizeof(ComplexF64),1)
  cpmni = unsafe_wrap(Array,cr09+29*sizeof(ComplexF64),1)
  cpmnv = unsafe_wrap(Array,cr09+30*sizeof(ComplexF64),1)
  xcpmni = unsafe_wrap(Array,cr09+31*sizeof(ComplexF64),1)
  xcpmnv = unsafe_wrap(Array,cr09+32*sizeof(ComplexF64),1)

  cr10 = cglobal((:cr10_,libxfoil_light_cs),ComplexF64)
  xpref = unsafe_wrap(Array,cr10,IQX)
  cpref = unsafe_wrap(Array,cr10+sizeof(ComplexF64)*IQX,IQX)
  verspol = unsafe_wrap(Array,cr10+sizeof(ComplexF64)*(2*IQX),NPX)
  cpolxy = unsafe_wrap(Array,cr10+sizeof(ComplexF64)*(2*IQX+NPX),(IQX,2,NPX))
  machp1 = unsafe_wrap(Array,cr10+sizeof(ComplexF64)*(2*IQX+NPX+IQX*2*NPX),NPX)
  reynp1 = unsafe_wrap(Array,cr10+sizeof(ComplexF64)*(2*IQX+2*NPX+IQX*2*NPX),NPX)
  acritp = unsafe_wrap(Array,cr10+sizeof(ComplexF64)*(2*IQX+3*NPX+IQX*2*NPX),NPX)
  xstripp = unsafe_wrap(Array,cr10+sizeof(ComplexF64)*(2*IQX+4*NPX+IQX*2*NPX),(ISX,NPX))

  cr11= cglobal((:cr11_,libxfoil_light_cs),ComplexF64)
  pi = unsafe_wrap(Array,cr11+sizeof(ComplexF64)*0,1)
  hopi = unsafe_wrap(Array,cr11+sizeof(ComplexF64)*1,1)
  qopi = unsafe_wrap(Array,cr11+sizeof(ComplexF64)*2,1)
  dtor = unsafe_wrap(Array,cr11+sizeof(ComplexF64)*3,1)

  cr12= cglobal((:cr12_,libxfoil_light_cs),ComplexF64)
  cvpar = unsafe_wrap(Array,cr12+sizeof(ComplexF64)*0,1)
  cterat = unsafe_wrap(Array,cr12+sizeof(ComplexF64)*1,1)
  ctrrat = unsafe_wrap(Array,cr12+sizeof(ComplexF64)*2,1)
  xsref1 = unsafe_wrap(Array,cr12+sizeof(ComplexF64)*3,1)
  xsref2 = unsafe_wrap(Array,cr12+sizeof(ComplexF64)*4,1)
  xpref1 = unsafe_wrap(Array,cr12+sizeof(ComplexF64)*5,1)
  xpref2 = unsafe_wrap(Array,cr12+sizeof(ComplexF64)*6,1)

  cr13 = cglobal((:cr12_,libxfoil_light_cs),ComplexF64)
  size = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*0,1)
  scrnfr = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*1,1)
  plotar = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*2,1)
  pfac = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*3,1)
  qfac = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*4,1)
  vfac = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*5,1)
  xwind = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*6,1)
  ywind = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*7,1)
  xpage = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*8,1)
  ypage = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*9,1)
  xmarg = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*10,1)
  ymarg = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*11,1)
  ch = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*12,1)
  chg = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*13,1)
  chq = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*14,1)
  xofair = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*15,1)
  yofair = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*16,1)
  facair = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*17,1)
  xofa = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*18,1)
  yofa = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*19,1)
  faca = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*20,1)
  uprwt = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*21,1)
  cpmin = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*22,1)
  cpmax = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*23,1)
  cpdel = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*24,1)
  cpolplf = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*25,(3,4))
  xcdwid = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*(25+3*4),1)
  xalwid = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*(26+3*4),1)
  xocwid = unsafe_wrap(Array,cr13+sizeof(ComplexF64)*(27+3*4),1)

  cr14 = cglobal((:cr14_,libxfoil_light_cs),ComplexF64)
  xb = unsafe_wrap(Array,cr14,IBX)
  yb = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*IBX,IBX)
  xbp = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(2*IBX),IBX)
  ybp = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(3*IBX),IBX)
  sb = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(4*IBX),IBX)
  snew = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(5*IBX),4*IBX)
  xbf = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX),1)
  ybf = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+1),1)
  xof = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+2),1)
  yof = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+3),1)
  hmom = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+4),1)
  hfx = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+5),1)
  hfy = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+6),1)
  xbmin = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+7),1)
  xbmax = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+8),1)
  ybmin = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+9),1)
  ybmax = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+10),1)
  sble = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+11),1)
  chordb = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+12),1)
  areab = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+13),1)
  radble = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+14),1)
  angbte = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+15),1)
  ei11ba = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+16),1)
  ei22ba = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+17),1)
  apx1ba = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+18),1)
  apx2ba = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+19),1)
  ei11bt = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+20),1)
  ei22bt = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+21),1)
  apx1bt = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+22),1)
  apx2bt = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+23),1)
  thickb = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+24),1)
  cambrb = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+25),1)
  xcm = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(9*IBX+26),2*IBX)
  ycm = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(11*IBX+26),2*IBX)
  scm = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(13*IBX+26),2*IBX)
  xcmp = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(15*IBX+26),2*IBX)
  ycmp = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(17*IBX+36),2*IBX)
  xtk = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(19*IBX+36),2*IBX)
  ytk = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(21*IBX+36),2*IBX)
  stk = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(23*IBX+36),2*IBX)
  xtkp = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(25*IBX+36),2*IBX)
  ytkp = unsafe_wrap(Array,cr14+sizeof(ComplexF64)*(27*IBX+36),2*IBX)

  cr15 = cglobal((:cr15_,libxfoil_light_cs),ComplexF64)
  xssi = unsafe_wrap(Array,cr15,(IVX,ISX))
  uedg = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(IVX*ISX),(IVX,ISX))
  uinv = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(2*IVX*ISX),(IVX,ISX))
  mass = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(3*IVX*ISX),(IVX,ISX))
  thet = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(4*IVX*ISX),(IVX,ISX))
  dstr = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(5*IVX*ISX),(IVX,ISX))
  ctau = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(6*IVX*ISX),(IVX,ISX))
  delt = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(7*IVX*ISX),(IVX,ISX))
  uslp = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(8*IVX*ISX),(IVX,ISX))
  guxq = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(9*IVX*ISX),(IVX,ISX))
  guxd = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(10*IVX*ISX),(IVX,ISX))
  tau = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(11*IVX*ISX),(IVX,ISX))
  dis = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(12*IVX*ISX),(IVX,ISX))
  ctq = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(13*IVX*ISX),(IVX,ISX))
  vti = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(14*IVX*ISX),(IVX,ISX))
  reinf1 = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(15*IVX*ISX),1)
  reinf = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(15*IVX*ISX+1),1)
  reinf_cl = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(15*IVX*ISX+2),1)
  acrit = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(15*IVX*ISX+3),1)
  xstrip = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(15*IVX*ISX+4),ISX)
  xoctr = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(15*IVX*ISX+4+ISX),ISX)
  yoctr = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(15*IVX*ISX+4+2*ISX),ISX)
  xssitr = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(15*IVX*ISX+4+3*ISX),ISX)
  uinv_a = unsafe_wrap(Array,cr15+sizeof(ComplexF64)*(15*IVX*ISX+4+4*ISX),(IVX,ISX))

  cr17 = cglobal((:cr17_,libxfoil_light_cs),ComplexF64)
  rmsbl = unsafe_wrap(Array,cr17,1)
  rmxbl = unsafe_wrap(Array,cr17+sizeof(ComplexF64),1)
  rlx = unsafe_wrap(Array,cr17+2*sizeof(ComplexF64),1)
  vaccel = unsafe_wrap(Array,cr17+3*sizeof(ComplexF64),1)

  cr18 = cglobal((:cr18_,libxfoil_light_cs),ComplexF64)
  xsf = unsafe_wrap(Array,cr18,1)
  ysf = unsafe_wrap(Array,cr18+sizeof(ComplexF64),1)
  xoff = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*2,1)
  yoff = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*3,1)
  xgmin = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*4,1)
  xgmax = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*5,1)
  ygmin = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*6,1)
  ygmax = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*7,1)
  dxyg = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*8,1)
  xcmin = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*9,1)
  xcmax = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*10,1)
  ycmin = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*11,1)
  ycmax = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*12,1)
  dxyc = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*13,1)
  dyoffc = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*14,1)
  xpmin = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*15,1)
  xpmax = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*16,1)
  ypmin = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*17,1)
  ypmax = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*18,1)
  dxyp = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*19,1)
  dyoffp = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*20,1)
  ysfp = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*21,1)
  gtick = unsafe_wrap(Array,cr18+sizeof(ComplexF64)*22,1)

  qmat = cglobal((:qmat_,libxfoil_light_cs),ComplexF64)
  q = unsafe_wrap(Array,qmat,(IQX,IQX))
  dq = unsafe_wrap(Array,qmat+sizeof(ComplexF64)*(IQX*IQX),IQX)
  dzdg = unsafe_wrap(Array,qmat+sizeof(ComplexF64)*(IQX^2+IQX),IQX)
  dzdn = unsafe_wrap(Array,qmat+sizeof(ComplexF64)*(IQX^2+2*IQX),IQX)
  dzdm = unsafe_wrap(Array,qmat+sizeof(ComplexF64)*(IQX^2+3*IQX),IZX)
  dqdg = unsafe_wrap(Array,qmat+sizeof(ComplexF64)*(IQX^2+3*IQX+IZX),IQX)
  dqdm = unsafe_wrap(Array,qmat+sizeof(ComplexF64)*(IQX^2+4*IQX+IZX),IZX)
  qtan1 = unsafe_wrap(Array,qmat+sizeof(ComplexF64)*(IQX^2+4*IQX+2*IZX),1)
  qtan2 = unsafe_wrap(Array,qmat+sizeof(ComplexF64)*(IQX^2+4*IQX+2*IZX+1),1)
  z_qinf = unsafe_wrap(Array,qmat+sizeof(ComplexF64)*(IQX^2+4*IQX+2*IZX+2),1)
  z_alfa = unsafe_wrap(Array,qmat+sizeof(ComplexF64)*(IQX^2+4*IQX+2*IZX+3),1)
  z_qdof0 = unsafe_wrap(Array,qmat+sizeof(ComplexF64)*(IQX^2+4*IQX+2*IZX+4),1)
  z_qdof1 = unsafe_wrap(Array,qmat+sizeof(ComplexF64)*(IQX^2+4*IQX+2*IZX+5),1)
  z_qdof2 = unsafe_wrap(Array,qmat+sizeof(ComplexF64)*(IQX^2+4*IQX+2*IZX+6),1)
  z_qdof3 = unsafe_wrap(Array,qmat+sizeof(ComplexF64)*(IQX^2+4*IQX+2*IZX+7),1)

  vmat = cglobal((:vmat_,libxfoil_light_cs),ComplexF64)
  va = unsafe_wrap(Array,vmat,(3,2,IZX))
  vb = unsafe_wrap(Array,vmat+sizeof(ComplexF64)*(3*2*IZX),(3,2,IZX))
  vdel = unsafe_wrap(Array,vmat+sizeof(ComplexF64)*(2*3*2*IZX),(3,2,IZX))
  vm = unsafe_wrap(Array,vmat+sizeof(ComplexF64)*(3*3*2*IZX),(3,IZX,IZX))
  vz = unsafe_wrap(Array,vmat+sizeof(ComplexF64)*(3*3*2*IZX+IZX*IZX),(3,2))

  ci01 = cglobal((:ci01_,libxfoil_light_cs),Int32)
  iq1 = unsafe_wrap(Array,ci01,1)
  iq2 = unsafe_wrap(Array,ci01+sizeof(Int32),1)
  nsp = unsafe_wrap(Array,ci01+sizeof(Int32)*2,1)
  nqsp = unsafe_wrap(Array,ci01+sizeof(Int32)*3,1)
  kqtarg = unsafe_wrap(Array,ci01+sizeof(Int32)*4,1)
  iacqsp = unsafe_wrap(Array,ci01+sizeof(Int32)*5,1)
  nc1 = unsafe_wrap(Array,ci01+sizeof(Int32)*6,1)
  nname = unsafe_wrap(Array,ci01+sizeof(Int32)*7,1)
  nprefix = unsafe_wrap(Array,ci01+sizeof(Int32)*8,1)

  ci03 = cglobal((:ci03_,libxfoil_light_cs),Int32)
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

  ci04 = cglobal((:ci04_,libxfoil_light_cs),Int32)
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

  ci05 = cglobal((:ci05_,libxfoil_light_cs),Int32)
  iblte = unsafe_wrap(Array,ci05,ISX)
  nbl = unsafe_wrap(Array,ci05+sizeof(Int32)*ISX,ISX)
  ipan = unsafe_wrap(Array,ci05+sizeof(Int32)*(2*ISX),(IVX,ISX))
  isys = unsafe_wrap(Array,ci05+sizeof(Int32)*(2*ISX+IVX*ISX),(IVX,ISX))
  nsys = unsafe_wrap(Array,ci05+sizeof(Int32)*(2*ISX+2*IVX*ISX),1)
  itran = unsafe_wrap(Array,ci05+sizeof(Int32)*(2*ISX+2*IVX*ISX+1),ISX)

  ci06 = cglobal((:ci06_,libxfoil_light_cs),Int32)
  imxbl = unsafe_wrap(Array,ci06,1)
  ismxbl = unsafe_wrap(Array,ci06+sizeof(Int32),1)

  cl01 = cglobal((:cl01_,libxfoil_light_cs),Int32)
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

  cl02 = cglobal((:cl02_,libxfoil_light_cs),Int32)
  tforce = unsafe_wrap(Array,cl02,ISX)

  cc01 = cglobal((:cc01_,libxfoil_light_cs),UInt8)
  fname = unsafe_string(cc01+sizeof(UInt8)*0,64)
  name = unsafe_string(cc01+sizeof(UInt8)*64,48)
  ispars = unsafe_string(cc01+sizeof(UInt8)*(64+48),80)
  oname = unsafe_string(cc01+sizeof(UInt8)*(64+48+80),64)
  prefix = unsafe_string(cc01+sizeof(UInt8)*(2*64+48+80),64)
  pfname = unsafe_string(cc01+sizeof(UInt8)*(3*64+48+80),64)
  pfnamx = unsafe_string(cc01+sizeof(UInt8)*(4*64+48+80),64)
  namepol = unsafe_string(cc01+sizeof(UInt8)*(5*64+48+80),48)
  nameref = unsafe_string(cc01+sizeof(UInt8)*(5*64+2*48+80),48)

  cc02 = cglobal((:cc02_,libxfoil_light_cs),UInt8)
  labref = unsafe_string(cc02,32)

  cc03 = cglobal((:cc03_,libxfoil_light_cs),UInt8)
  vmxbl = unsafe_string(cc03,1)

  return globalstruct_cs(version,
    aij, dij, qinv, qvis, cpi, cpv, qinvu, qinv_a,
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
    uinv_a, rmsbl, rmxbl, rlx, vaccel,
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
    iblte, nbl, ipan, isys, nsys, itran, imxbl, ismxbl,
    ok, limage, sharp, lgamu, lqinu, lvisc, lalfa, lwake, lpacc, lblini, lipan, lqaij,
    ladij, lwdij, lcpxx, lqvdes, lqrefl, lqspec, lvconv, lcpref, lclock, lpfile, lpfilx,
    lppsho, lbflap, lflap, leiw, lscini, lforef, lnorm, lgsame, lplcam, lqsym, lgsym,
    lqgrid, lggrid, lgtick, lqslop, lgslop, lcslop, lqsppl, lgeopl, lgparm, lcpgrd,
    lblgrd, lblsym, lplot, lsym, liqset, lclip, lvlab, lcurs, lland, lpgrid, lpcdw,
    lplist, lplegn, lcminp, lhmomp, lexitflag, tforce,
    fname, name, ispars, oname, prefix, pfname, pfnamx, namepol, nameref,
    labref, vmxbl)
end
