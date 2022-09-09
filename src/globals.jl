"""
    XfoilGlobals

Holds XFOIL global variables
"""
struct XfoilGlobals{T}
    #cr01
    version::Array{T,1}
    #cr03
    aij::Array{T,2}
    dij::Array{T,2}
    #cr04
    qinv::Array{T,1}
    qvis::Array{T,1}
    cpi::Array{T,1}
    cpv::Array{T,1}
    qinvu::Array{T,2}
    qinv_a::Array{T,1}
    #cr05
    x::Array{T,1}
    y::Array{T,1}
    xp::Array{T,1}
    yp::Array{T,1}
    s::Array{T,1}
    sle::Array{T,1}
    xle::Array{T,1}
    yle::Array{T,1}
    xte::Array{T,1}
    yte::Array{T,1}
    chord::Array{T,1}
    yimage::Array{T,1}
    wgap::Array{T,1}
    waklen::Array{T,1}
    #cr06
    gam::Array{T,1}
    gamu::Array{T,2}
    gam_a::Array{T,1}
    sig::Array{T,1}
    nx::Array{T,1}
    ny::Array{T,1}
    apanel::Array{T,1}
    sst::Array{T,1}
    sst_go::Array{T,1}
    sst_gp::Array{T,1}
    gamte::Array{T,1}
    gamte_a::Array{T,1}
    sigte::Array{T,1}
    sigte_a::Array{T,1}
    dste::Array{T,1}
    ante::Array{T,1}
    aste::Array{T,1}
    #cr07
    ssple::Array{T,1}
    sspec::Array{T,1}
    xspoc::Array{T,1}
    yspoc::Array{T,1}
    qgamm::Array{T,1}
    qspec::Array{T,2}
    qspecp::Array{T,2}
    algam::Array{T,1}
    clgam::Array{T,1}
    cmgam::Array{T,1}
    alqsp::Array{T,1}
    clqsp::Array{T,1}
    cmqsp::Array{T,1}
    qf0::Array{T,1}
    qf1::Array{T,1}
    qf2::Array{T,1}
    qf3::Array{T,1}
    qdof0::Array{T,1}
    qdof1::Array{T,1}
    qdof2::Array{T,1}
    qdof3::Array{T,1}
    clspec::Array{T,1}
    ffilt::Array{T,1}
    #cr09
    adeg::Array{T,1}
    alfa::Array{T,1}
    awake::Array{T,1}
    mvisc::Array{T,1}
    avisc::Array{T,1}
    xcmref::Array{T,1}
    ycmref::Array{T,1}
    cl::Array{T,1}
    cm::Array{T,1}
    cd::Array{T,1}
    cdp::Array{T,1}
    cdf::Array{T,1}
    cl_alf::Array{T,1}
    cl_msq::Array{T,1}
    psio::Array{T,1}
    circ::Array{T,1}
    cosa::Array{T,1}
    sina::Array{T,1}
    qinf::Array{T,1}
    gamma::Array{T,1}
    gamm1::Array{T,1}
    minf1::Array{T,1}
    minf::Array{T,1}
    minf_cl::Array{T,1}
    tklam::Array{T,1}
    tkl_msq::Array{T,1}
    cpstar::Array{T,1}
    qstar::Array{T,1}
    cpmn::Array{T,1}
    cpmni::Array{T,1}
    cpmnv::Array{T,1}
    xcpmni::Array{T,1}
    xcpmnv::Array{T,1}
    #cr10
    xpref::Array{T,1}
    cpref::Array{T,1}
    verspol::Array{T,1}
    cpolxy::Array{T,3}
    machp1::Array{T,1}
    reynp1::Array{T,1}
    acritp::Array{T,1}
    xstripp::Array{T,2}
    #cr11
    pi::Array{T,1}
    hopi::Array{T,1}
    qopi::Array{T,1}
    dtor::Array{T,1}
    #cr12
    cvpar::Array{T,1}
    cterat::Array{T,1}
    ctrrat::Array{T,1}
    xsref1::Array{T,1}
    xsref2::Array{T,1}
    xpref1::Array{T,1}
    xpref2::Array{T,1}
    #cr13
    size::Array{T,1}
    scrnfr::Array{T,1}
    plotar::Array{T,1}
    pfac::Array{T,1}
    qfac::Array{T,1}
    vfac::Array{T,1}
    xwind::Array{T,1}
    ywind::Array{T,1}
    xpage::Array{T,1}
    ypage::Array{T,1}
    xmarg::Array{T,1}
    ymarg::Array{T,1}
    ch::Array{T,1}
    chg::Array{T,1}
    chq::Array{T,1}
    xofair::Array{T,1}
    yofair::Array{T,1}
    facair::Array{T,1}
    xofa::Array{T,1}
    yofa::Array{T,1}
    faca::Array{T,1}
    uprwt::Array{T,1}
    cpmin::Array{T,1}
    cpmax::Array{T,1}
    cpdel::Array{T,1}
    cpolplf::Array{T,2}
    xcdwid::Array{T,1}
    xalwid::Array{T,1}
    xocwid::Array{T,1}
    #cr14
    xb::Array{T,1}
    yb::Array{T,1}
    xbp::Array{T,1}
    ybp::Array{T,1}
    sb::Array{T,1}
    snew::Array{T,1}
    xbf::Array{T,1}
    ybf::Array{T,1}
    xof::Array{T,1}
    yof::Array{T,1}
    hmom::Array{T,1}
    hfx::Array{T,1}
    hfy::Array{T,1}
    xbmin::Array{T,1}
    xbmax::Array{T,1}
    ybmin::Array{T,1}
    ybmax::Array{T,1}
    sble::Array{T,1}
    chordb::Array{T,1}
    areab::Array{T,1}
    radble::Array{T,1}
    angbte::Array{T,1}
    ei11ba::Array{T,1}
    ei22ba::Array{T,1}
    apx1ba::Array{T,1}
    apx2ba::Array{T,1}
    ei11bt::Array{T,1}
    ei22bt::Array{T,1}
    apx1bt::Array{T,1}
    apx2bt::Array{T,1}
    thickb::Array{T,1}
    cambrb::Array{T,1}
    xcm::Array{T,1}
    ycm::Array{T,1}
    scm::Array{T,1}
    xcmp::Array{T,1}
    ycmp::Array{T,1}
    xtk::Array{T,1}
    ytk::Array{T,1}
    stk::Array{T,1}
    xtkp::Array{T,1}
    ytkp::Array{T,1}
    #cr15
    xssi::Array{T,2}
    uedg::Array{T,2}
    uinv::Array{T,2}
    mass::Array{T,2}
    thet::Array{T,2}
    dstr::Array{T,2}
    ctau::Array{T,2}
    delt::Array{T,2}
    uslp::Array{T,2}
    guxq::Array{T,2}
    guxd::Array{T,2}
    tau::Array{T,2}
    dis::Array{T,2}
    ctq::Array{T,2}
    vti::Array{T,2}
    reinf1::Array{T,1}
    reinf::Array{T,1}
    reinf_cl::Array{T,1}
    acrit::Array{T,1}
    xstrip::Array{T,1}
    xoctr::Array{T,1}
    yoctr::Array{T,1}
    xssitr::Array{T,1}
    uinv_a::Array{T,2}
    #cr17
    rmsbl::Array{T,1}
    rmxbl::Array{T,1}
    rlx::Array{T,1}
    vaccel::Array{T,1}
    #cr18
    xsf::Array{T,1}
    ysf::Array{T,1}
    xoff::Array{T,1}
    yoff::Array{T,1}
    xgmin::Array{T,1}
    xgmax::Array{T,1}
    ygmin::Array{T,1}
    ygmax::Array{T,1}
    dxyg::Array{T,1}
    xcmin::Array{T,1}
    xcmax::Array{T,1}
    ycmin::Array{T,1}
    ycmax::Array{T,1}
    dxyc::Array{T,1}
    dyoffc::Array{T,1}
    xpmin::Array{T,1}
    xpmax::Array{T,1}
    ypmin::Array{T,1}
    ypmax::Array{T,1}
    dxyp::Array{T,1}
    dyoffp::Array{T,1}
    ysfp::Array{T,1}
    gtick::Array{T,1}
    #qmat
    q::Array{T,2}
    dq::Array{T,1}
    dzdg::Array{T,1}
    dzdn::Array{T,1}
    dzdm::Array{T,1}
    dqdg::Array{T,1}
    dqdm::Array{T,1}
    qtan1::Array{T,1}
    qtan2::Array{T,1}
    z_qinf::Array{T,1}
    z_alfa::Array{T,1}
    z_qdof0::Array{T,1}
    z_qdof1::Array{T,1}
    z_qdof2::Array{T,1}
    z_qdof3::Array{T,1}
    #vmat
    va::Array{T,3}
    vb::Array{T,3}
    vdel::Array{T,3}
    vm::Array{T,3}
    vz::Array{T,2}
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
    #var1
    x1::Array{T,1}
    u1::Array{T,1}
    t1::Array{T,1}
    d1::Array{T,1}
    s1::Array{T,1}
    ampl1::Array{T,1}
    u1_uei::Array{T,1}
    u1_ms::Array{T,1}
    dw1::Array{T,1}
    h1::Array{T,1}
    h1_t1::Array{T,1}
    h1_d1::Array{T,1}
    m1::Array{T,1}
    m1_u1::Array{T,1}
    m1_ms::Array{T,1}
    r1::Array{T,1}
    r1_u1::Array{T,1}
    r1_ms::Array{T,1}
    v1::Array{T,1}
    v1_u1::Array{T,1}
    v1_ms::Array{T,1}
    v1_re::Array{T,1}
    hk1::Array{T,1}
    hk1_u1::Array{T,1}
    hk1_t1::Array{T,1}
    hk1_d1::Array{T,1}
    hk1_ms::Array{T,1}
    hs1::Array{T,1}
    hs1_u1::Array{T,1}
    hs1_t1::Array{T,1}
    hs1_d1::Array{T,1}
    hs1_ms::Array{T,1}
    hs1_re::Array{T,1}
    hc1::Array{T,1}
    hc1_u1::Array{T,1}
    hc1_t1::Array{T,1}
    hc1_d1::Array{T,1}
    hc1_ms::Array{T,1}
    rt1::Array{T,1}
    rt1_u1::Array{T,1}
    rt1_t1::Array{T,1}
    rt1_ms::Array{T,1}
    rt1_re::Array{T,1}
    cf1::Array{T,1}
    cf1_u1::Array{T,1}
    cf1_t1::Array{T,1}
    cf1_d1::Array{T,1}
    cf1_ms::Array{T,1}
    cf1_re::Array{T,1}
    di1::Array{T,1}
    di1_u1::Array{T,1}
    di1_t1::Array{T,1}
    di1_d1::Array{T,1}
    di1_s1::Array{T,1}
    di1_ms::Array{T,1}
    di1_re::Array{T,1}
    us1::Array{T,1}
    us1_u1::Array{T,1}
    us1_t1::Array{T,1}
    us1_d1::Array{T,1}
    us1_ms::Array{T,1}
    us1_re::Array{T,1}
    cq1::Array{T,1}
    cq1_u1::Array{T,1}
    cq1_t1::Array{T,1}
    cq1_d1::Array{T,1}
    cq1_ms::Array{T,1}
    cq1_re::Array{T,1}
    de1::Array{T,1}
    de1_u1::Array{T,1}
    de1_t1::Array{T,1}
    de1_d1::Array{T,1}
    de1_ms::Array{T,1}
    # var2
    x2::Array{T,1}
    u2::Array{T,1} 
    t2::Array{T,1} 
    d2::Array{T,1} 
    s2::Array{T,1} 
    ampl2::Array{T,1} 
    u2_uei::Array{T,1} 
    u2_ms::Array{T,1} 
    dw2::Array{T,1} 
    h2::Array{T,1} 
    h2_t2::Array{T,1} 
    h2_d2::Array{T,1} 
    m2::Array{T,1} 
    m2_u2::Array{T,1} 
    m2_ms::Array{T,1} 
    r2::Array{T,1} 
    r2_u2::Array{T,1} 
    r2_ms::Array{T,1} 
    v2::Array{T,1} 
    v2_u2::Array{T,1} 
    v2_ms::Array{T,1} 
    v2_re::Array{T,1} 
    hk2::Array{T,1} 
    hk2_u2::Array{T,1} 
    hk2_t2::Array{T,1} 
    hk2_d2::Array{T,1} 
    hk2_ms::Array{T,1} 
    hs2::Array{T,1} 
    hs2_u2::Array{T,1} 
    hs2_t2::Array{T,1} 
    hs2_d2::Array{T,1} 
    hs2_ms::Array{T,1} 
    hs2_re::Array{T,1} 
    hc2::Array{T,1} 
    hc2_u2::Array{T,1} 
    hc2_t2::Array{T,1} 
    hc2_d2::Array{T,1} 
    hc2_ms::Array{T,1} 
    rt2::Array{T,1} 
    rt2_u2::Array{T,1} 
    rt2_t2::Array{T,1} 
    rt2_ms::Array{T,1} 
    rt2_re::Array{T,1} 
    cf2::Array{T,1} 
    cf2_u2::Array{T,1} 
    cf2_t2::Array{T,1} 
    cf2_d2::Array{T,1} 
    cf2_ms::Array{T,1} 
    cf2_re::Array{T,1} 
    di2::Array{T,1} 
    di2_u2::Array{T,1} 
    di2_t2::Array{T,1} 
    di2_d2::Array{T,1} 
    di2_s2::Array{T,1} 
    di2_ms::Array{T,1} 
    di2_re::Array{T,1} 
    us2::Array{T,1} 
    us2_u2::Array{T,1} 
    us2_t2::Array{T,1} 
    us2_d2::Array{T,1} 
    us2_ms::Array{T,1} 
    us2_re::Array{T,1} 
    cq2::Array{T,1} 
    cq2_u2::Array{T,1} 
    cq2_t2::Array{T,1} 
    cq2_d2::Array{T,1} 
    cq2_ms::Array{T,1} 
    cq2_re::Array{T,1} 
    de2::Array{T,1} 
    de2_u2::Array{T,1} 
    de2_t2::Array{T,1} 
    de2_d2::Array{T,1} 
    de2_ms::Array{T,1} 
    # vara
    cfm::Array{T,1} 
    cfm_ms::Array{T,1} 
    cfm_re::Array{T,1} 
    cfm_u1::Array{T,1} 
    cfm_t1::Array{T,1} 
    cfm_d1::Array{T,1} 
    cfm_u2::Array{T,1} 
    cfm_t2::Array{T,1} 
    cfm_d2::Array{T,1} 
    xt::Array{T,1} 
    xt_a1::Array{T,1} 
    xt_ms::Array{T,1} 
    xt_re::Array{T,1} 
    xt_xf::Array{T,1} 
    xt_x1::Array{T,1} 
    xt_t1::Array{T,1} 
    xt_d1::Array{T,1} 
    xt_u1::Array{T,1} 
    xt_x2::Array{T,1} 
    xt_t2::Array{T,1} 
    xt_d2::Array{T,1} 
    xt_u2::Array{T,1}
    # sav
    c1sav::Array{T,1}
    c2sav::Array{T,1}
    # var
    dwte::Array{T,1}
    qinfbl::Array{T,1}
    tkbl::Array{T,1} 
    tkbl_ms::Array{T,1}
    rstbl::Array{T,1} 
    rstbl_ms::Array{T,1}
    hstinv::Array{T,1} 
    hstinv_ms::Array{T,1}
    reybl::Array{T,1} 
    reybl_ms::Array{T,1} 
    reybl_re::Array{T,1}
    gambl::Array{T,1} 
    gm1bl::Array{T,1} 
    hvrat::Array{T,1}
    bule::Array{T,1} 
    xiforc::Array{T,1} 
    amcrit::Array{T,1}
    simi::Array{Int32,1}
    tran::Array{Int32,1}
    turb::Array{Int32,1}
    wake::Array{Int32,1}
    trforc::Array{Int32,1}
    trfree::Array{Int32,1}
    # sys
    vs1::Array{T,2}
    vs2::Array{T,2}
    vsrez::Array{T,1}
    vsr::Array{T,1}
    vsm::Array{T,1}
    vsx::Array{T,1}
end

"""
    get_globals()

Wraps the global variables in XFOIL in a struct
"""
get_globals

"""
    get_globals_cs()

`get_globals` for the complex step enabled version of XFOIL.
"""
get_globals_cs

# definition of get_globals
for (T, name, library) in
    ((:Float64, :get_globals, :libxfoil_light),
    (:ComplexF64, :get_globals_cs, :libxfoil_light_cs))

    @eval begin

        function $(name)()

            cr01 = cglobal((:cr01_, $(library)),$T)
            version = unsafe_wrap(Array,cr01,1)

            cr03 = cglobal((:cr03_, $(library)),$T)
            aij = unsafe_wrap(Array,cr03,(IQX,IQX))
            dij = unsafe_wrap(Array,cr03+sizeof($T)*IQX^2,(IZX,IZX))

            cr04 = cglobal((:cr04_, $(library)),$T)
            qinv = unsafe_wrap(Array,cr04,IZX)
            qvis = unsafe_wrap(Array,cr04+sizeof($T)*IZX,IZX)
            cpi = unsafe_wrap(Array,cr04+sizeof($T)*(2*IZX),IZX)
            cpv = unsafe_wrap(Array,cr04+sizeof($T)*(3*IZX),IZX)
            qinvu = unsafe_wrap(Array,cr04+sizeof($T)*(4*IZX),(IZX,2))
            qinv_a = unsafe_wrap(Array,cr04+sizeof($T)*(6*IZX),IZX)

            cr05 = cglobal((:cr05_, $(library)),$T)
            x = unsafe_wrap(Array,cr05,IZX)
            y = unsafe_wrap(Array,cr05+sizeof($T)*IZX,IZX)
            xp = unsafe_wrap(Array,cr05+sizeof($T)*(2*IZX),IZX)
            yp = unsafe_wrap(Array,cr05+sizeof($T)*(3*IZX),IZX)
            s = unsafe_wrap(Array,cr05+sizeof($T)*(4*IZX),IZX)
            sle = unsafe_wrap(Array,cr05+sizeof($T)*(5*IZX),1)
            xle = unsafe_wrap(Array,cr05+sizeof($T)*(5*IZX+1),1)
            yle = unsafe_wrap(Array,cr05+sizeof($T)*(5*IZX+2),1)
            xte = unsafe_wrap(Array,cr05+sizeof($T)*(5*IZX+3),1)
            yte = unsafe_wrap(Array,cr05+sizeof($T)*(5*IZX+4),1)
            chord = unsafe_wrap(Array,cr05+sizeof($T)*(5*IZX+5),1)
            yimage = unsafe_wrap(Array,cr05+sizeof($T)*(5*IZX+6),1)
            wgap = unsafe_wrap(Array,cr05+sizeof($T)*(5*IZX+7),IWK)
            waklen = unsafe_wrap(Array,cr05+sizeof($T)*(5*IZX+7+IWK),1)

            cr06 = cglobal((:cr06_, $(library)),$T)
            gam = unsafe_wrap(Array,cr06,IQX)
            gamu = unsafe_wrap(Array,cr06+sizeof($T)*IQX,(IQX,2))
            gam_a = unsafe_wrap(Array,cr06+sizeof($T)*(IQX*3),IQX)
            sig = unsafe_wrap(Array,cr06+sizeof($T)*(IQX*4),IZX)
            nx = unsafe_wrap(Array,cr06+sizeof($T)*(IQX*4+IZX),IZX)
            ny = unsafe_wrap(Array,cr06+sizeof($T)*(IQX*4+IZX*2),IZX)
            apanel = unsafe_wrap(Array,cr06+sizeof($T)*(IQX*4+IZX*3),IZX)
            sst = unsafe_wrap(Array,cr06+sizeof($T)*(IQX*4+IZX*4),1)
            sst_go = unsafe_wrap(Array,cr06+sizeof($T)*(IQX*4+IZX*4+1),1)
            sst_gp = unsafe_wrap(Array,cr06+sizeof($T)*(IQX*4+IZX*4+2),1)
            gamte = unsafe_wrap(Array,cr06+sizeof($T)*(IQX*4+IZX*4+3),1)
            gamte_a = unsafe_wrap(Array,cr06+sizeof($T)*(IQX*4+IZX*4+4),1)
            sigte = unsafe_wrap(Array,cr06+sizeof($T)*(IQX*4+IZX*4+5),1)
            sigte_a = unsafe_wrap(Array,cr06+sizeof($T)*(IQX*4+IZX*4+6),1)
            dste = unsafe_wrap(Array,cr06+sizeof($T)*(IQX*4+IZX*4+7),1)
            ante = unsafe_wrap(Array,cr06+sizeof($T)*(IQX*4+IZX*4+8),1)
            aste = unsafe_wrap(Array,cr06+sizeof($T)*(IQX*4+IZX*4+9),1)

            cr07 = cglobal((:cr07_, $(library)),$T)
            ssple = unsafe_wrap(Array,cr07,1)
            sspec = unsafe_wrap(Array,cr07+sizeof($T),IBX)
            xspoc = unsafe_wrap(Array,cr07+sizeof($T)*(1+IBX),IBX)
            yspoc = unsafe_wrap(Array,cr07+sizeof($T)*(1+2*IBX),IBX)
            qgamm = unsafe_wrap(Array,cr07+sizeof($T)*(1+3*IBX),IBX)
            qspec = unsafe_wrap(Array,cr07+sizeof($T)*(1+4*IBX),(IBX,IPX))
            qspecp = unsafe_wrap(Array,cr07+sizeof($T)*(1+4*IBX+IBX*IPX),(IBX,IPX))
            algam = unsafe_wrap(Array,cr07+sizeof($T)*(1+4*IBX+2*IBX*IPX),1)
            clgam = unsafe_wrap(Array,cr07+sizeof($T)*(2+4*IBX+2*IBX*IPX),1)
            cmgam = unsafe_wrap(Array,cr07+sizeof($T)*(3+4*IBX+2*IBX*IPX),1)
            alqsp = unsafe_wrap(Array,cr07+sizeof($T)*(4+4*IBX+2*IBX*IPX),IPX)
            clqsp = unsafe_wrap(Array,cr07+sizeof($T)*(4+4*IBX+2*IBX*IPX+IPX),IPX)
            cmqsp = unsafe_wrap(Array,cr07+sizeof($T)*(4+4*IBX+2*IBX*IPX+2*IPX),IPX)
            qf0 = unsafe_wrap(Array,cr07+sizeof($T)*(4+4*IBX+2*IBX*IPX+3*IPX),IQX)
            qf1 = unsafe_wrap(Array,cr07+sizeof($T)*(4+4*IBX+2*IBX*IPX+3*IPX+IQX),IQX)
            qf2 = unsafe_wrap(Array,cr07+sizeof($T)*(4+4*IBX+2*IBX*IPX+3*IPX+2*IQX),IQX)
            qf3 = unsafe_wrap(Array,cr07+sizeof($T)*(4+4*IBX+2*IBX*IPX+3*IPX+3*IQX),IQX)
            qdof0 = unsafe_wrap(Array,cr07+sizeof($T)*(4+4*IBX+2*IBX*IPX+3*IPX+4*IQX),1)
            qdof1 = unsafe_wrap(Array,cr07+sizeof($T)*(5+4*IBX+2*IBX*IPX+3*IPX+4*IQX),1)
            qdof2 = unsafe_wrap(Array,cr07+sizeof($T)*(6+4*IBX+2*IBX*IPX+3*IPX+4*IQX),1)
            qdof3 = unsafe_wrap(Array,cr07+sizeof($T)*(7+4*IBX+2*IBX*IPX+3*IPX+4*IQX),1)
            clspec = unsafe_wrap(Array,cr07+sizeof($T)*(8+4*IBX+2*IBX*IPX+3*IPX+4*IQX),1)
            ffilt = unsafe_wrap(Array,cr07+sizeof($T)*(9+4*IBX+2*IBX*IPX+3*IPX+4*IQX),1)

            cr09 = cglobal((:cr09_, $(library)),$T)
            adeg = unsafe_wrap(Array,cr09+0*sizeof($T),1)
            alfa = unsafe_wrap(Array,cr09+1*sizeof($T),1)
            awake = unsafe_wrap(Array,cr09+2*sizeof($T),1)
            mvisc = unsafe_wrap(Array,cr09+3*sizeof($T),1)
            avisc = unsafe_wrap(Array,cr09+4*sizeof($T),1)
            xcmref = unsafe_wrap(Array,cr09+5*sizeof($T),1)
            ycmref = unsafe_wrap(Array,cr09+6*sizeof($T),1)
            cl = unsafe_wrap(Array,cr09+7*sizeof($T),1)
            cm = unsafe_wrap(Array,cr09+8*sizeof($T),1)
            cd = unsafe_wrap(Array,cr09+9*sizeof($T),1)
            cdp = unsafe_wrap(Array,cr09+10*sizeof($T),1)
            cdf = unsafe_wrap(Array,cr09+11*sizeof($T),1)
            cl_alf = unsafe_wrap(Array,cr09+12*sizeof($T),1)
            cl_msq = unsafe_wrap(Array,cr09+13*sizeof($T),1)
            psio = unsafe_wrap(Array,cr09+14*sizeof($T),1)
            circ = unsafe_wrap(Array,cr09+15*sizeof($T),1)
            cosa = unsafe_wrap(Array,cr09+16*sizeof($T),1)
            sina = unsafe_wrap(Array,cr09+17*sizeof($T),1)
            qinf = unsafe_wrap(Array,cr09+18*sizeof($T),1)
            gamma = unsafe_wrap(Array,cr09+19*sizeof($T),1)
            gamm1 = unsafe_wrap(Array,cr09+20*sizeof($T),1)
            minf1 = unsafe_wrap(Array,cr09+21*sizeof($T),1)
            minf = unsafe_wrap(Array,cr09+22*sizeof($T),1)
            minf_cl = unsafe_wrap(Array,cr09+23*sizeof($T),1)
            tklam = unsafe_wrap(Array,cr09+24*sizeof($T),1)
            tkl_msq = unsafe_wrap(Array,cr09+25*sizeof($T),1)
            cpstar = unsafe_wrap(Array,cr09+26*sizeof($T),1)
            qstar = unsafe_wrap(Array,cr09+27*sizeof($T),1)
            cpmn = unsafe_wrap(Array,cr09+28*sizeof($T),1)
            cpmni = unsafe_wrap(Array,cr09+29*sizeof($T),1)
            cpmnv = unsafe_wrap(Array,cr09+30*sizeof($T),1)
            xcpmni = unsafe_wrap(Array,cr09+31*sizeof($T),1)
            xcpmnv = unsafe_wrap(Array,cr09+32*sizeof($T),1)

            cr10 = cglobal((:cr10_, $(library)),$T)
            xpref = unsafe_wrap(Array,cr10,IQX)
            cpref = unsafe_wrap(Array,cr10+sizeof($T)*IQX,IQX)
            verspol = unsafe_wrap(Array,cr10+sizeof($T)*(2*IQX),NPX)
            cpolxy = unsafe_wrap(Array,cr10+sizeof($T)*(2*IQX+NPX),(IQX,2,NPX))
            machp1 = unsafe_wrap(Array,cr10+sizeof($T)*(2*IQX+NPX+IQX*2*NPX),NPX)
            reynp1 = unsafe_wrap(Array,cr10+sizeof($T)*(2*IQX+2*NPX+IQX*2*NPX),NPX)
            acritp = unsafe_wrap(Array,cr10+sizeof($T)*(2*IQX+3*NPX+IQX*2*NPX),NPX)
            xstripp = unsafe_wrap(Array,cr10+sizeof($T)*(2*IQX+4*NPX+IQX*2*NPX),(ISX,NPX))

            cr11= cglobal((:cr11_, $(library)),$T)
            pi = unsafe_wrap(Array,cr11+sizeof($T)*0,1)
            hopi = unsafe_wrap(Array,cr11+sizeof($T)*1,1)
            qopi = unsafe_wrap(Array,cr11+sizeof($T)*2,1)
            dtor = unsafe_wrap(Array,cr11+sizeof($T)*3,1)

            cr12= cglobal((:cr12_, $(library)),$T)
            cvpar = unsafe_wrap(Array,cr12+sizeof($T)*0,1)
            cterat = unsafe_wrap(Array,cr12+sizeof($T)*1,1)
            ctrrat = unsafe_wrap(Array,cr12+sizeof($T)*2,1)
            xsref1 = unsafe_wrap(Array,cr12+sizeof($T)*3,1)
            xsref2 = unsafe_wrap(Array,cr12+sizeof($T)*4,1)
            xpref1 = unsafe_wrap(Array,cr12+sizeof($T)*5,1)
            xpref2 = unsafe_wrap(Array,cr12+sizeof($T)*6,1)

            cr13 = cglobal((:cr12_, $(library)),$T)
            size = unsafe_wrap(Array,cr13+sizeof($T)*0,1)
            scrnfr = unsafe_wrap(Array,cr13+sizeof($T)*1,1)
            plotar = unsafe_wrap(Array,cr13+sizeof($T)*2,1)
            pfac = unsafe_wrap(Array,cr13+sizeof($T)*3,1)
            qfac = unsafe_wrap(Array,cr13+sizeof($T)*4,1)
            vfac = unsafe_wrap(Array,cr13+sizeof($T)*5,1)
            xwind = unsafe_wrap(Array,cr13+sizeof($T)*6,1)
            ywind = unsafe_wrap(Array,cr13+sizeof($T)*7,1)
            xpage = unsafe_wrap(Array,cr13+sizeof($T)*8,1)
            ypage = unsafe_wrap(Array,cr13+sizeof($T)*9,1)
            xmarg = unsafe_wrap(Array,cr13+sizeof($T)*10,1)
            ymarg = unsafe_wrap(Array,cr13+sizeof($T)*11,1)
            ch = unsafe_wrap(Array,cr13+sizeof($T)*12,1)
            chg = unsafe_wrap(Array,cr13+sizeof($T)*13,1)
            chq = unsafe_wrap(Array,cr13+sizeof($T)*14,1)
            xofair = unsafe_wrap(Array,cr13+sizeof($T)*15,1)
            yofair = unsafe_wrap(Array,cr13+sizeof($T)*16,1)
            facair = unsafe_wrap(Array,cr13+sizeof($T)*17,1)
            xofa = unsafe_wrap(Array,cr13+sizeof($T)*18,1)
            yofa = unsafe_wrap(Array,cr13+sizeof($T)*19,1)
            faca = unsafe_wrap(Array,cr13+sizeof($T)*20,1)
            uprwt = unsafe_wrap(Array,cr13+sizeof($T)*21,1)
            cpmin = unsafe_wrap(Array,cr13+sizeof($T)*22,1)
            cpmax = unsafe_wrap(Array,cr13+sizeof($T)*23,1)
            cpdel = unsafe_wrap(Array,cr13+sizeof($T)*24,1)
            cpolplf = unsafe_wrap(Array,cr13+sizeof($T)*25,(3,4))
            xcdwid = unsafe_wrap(Array,cr13+sizeof($T)*(25+3*4),1)
            xalwid = unsafe_wrap(Array,cr13+sizeof($T)*(26+3*4),1)
            xocwid = unsafe_wrap(Array,cr13+sizeof($T)*(27+3*4),1)

            cr14 = cglobal((:cr14_, $(library)),$T)
            xb = unsafe_wrap(Array,cr14,IBX)
            yb = unsafe_wrap(Array,cr14+sizeof($T)*IBX,IBX)
            xbp = unsafe_wrap(Array,cr14+sizeof($T)*(2*IBX),IBX)
            ybp = unsafe_wrap(Array,cr14+sizeof($T)*(3*IBX),IBX)
            sb = unsafe_wrap(Array,cr14+sizeof($T)*(4*IBX),IBX)
            snew = unsafe_wrap(Array,cr14+sizeof($T)*(5*IBX),4*IBX)
            xbf = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX),1)
            ybf = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+1),1)
            xof = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+2),1)
            yof = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+3),1)
            hmom = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+4),1)
            hfx = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+5),1)
            hfy = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+6),1)
            xbmin = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+7),1)
            xbmax = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+8),1)
            ybmin = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+9),1)
            ybmax = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+10),1)
            sble = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+11),1)
            chordb = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+12),1)
            areab = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+13),1)
            radble = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+14),1)
            angbte = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+15),1)
            ei11ba = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+16),1)
            ei22ba = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+17),1)
            apx1ba = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+18),1)
            apx2ba = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+19),1)
            ei11bt = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+20),1)
            ei22bt = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+21),1)
            apx1bt = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+22),1)
            apx2bt = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+23),1)
            thickb = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+24),1)
            cambrb = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+25),1)
            xcm = unsafe_wrap(Array,cr14+sizeof($T)*(9*IBX+26),2*IBX)
            ycm = unsafe_wrap(Array,cr14+sizeof($T)*(11*IBX+26),2*IBX)
            scm = unsafe_wrap(Array,cr14+sizeof($T)*(13*IBX+26),2*IBX)
            xcmp = unsafe_wrap(Array,cr14+sizeof($T)*(15*IBX+26),2*IBX)
            ycmp = unsafe_wrap(Array,cr14+sizeof($T)*(17*IBX+36),2*IBX)
            xtk = unsafe_wrap(Array,cr14+sizeof($T)*(19*IBX+36),2*IBX)
            ytk = unsafe_wrap(Array,cr14+sizeof($T)*(21*IBX+36),2*IBX)
            stk = unsafe_wrap(Array,cr14+sizeof($T)*(23*IBX+36),2*IBX)
            xtkp = unsafe_wrap(Array,cr14+sizeof($T)*(25*IBX+36),2*IBX)
            ytkp = unsafe_wrap(Array,cr14+sizeof($T)*(27*IBX+36),2*IBX)

            cr15 = cglobal((:cr15_, $(library)),$T)
            xssi = unsafe_wrap(Array,cr15,(IVX,ISX))
            uedg = unsafe_wrap(Array,cr15+sizeof($T)*(IVX*ISX),(IVX,ISX))
            uinv = unsafe_wrap(Array,cr15+sizeof($T)*(2*IVX*ISX),(IVX,ISX))
            mass = unsafe_wrap(Array,cr15+sizeof($T)*(3*IVX*ISX),(IVX,ISX))
            thet = unsafe_wrap(Array,cr15+sizeof($T)*(4*IVX*ISX),(IVX,ISX))
            dstr = unsafe_wrap(Array,cr15+sizeof($T)*(5*IVX*ISX),(IVX,ISX))
            ctau = unsafe_wrap(Array,cr15+sizeof($T)*(6*IVX*ISX),(IVX,ISX))
            delt = unsafe_wrap(Array,cr15+sizeof($T)*(7*IVX*ISX),(IVX,ISX))
            uslp = unsafe_wrap(Array,cr15+sizeof($T)*(8*IVX*ISX),(IVX,ISX))
            guxq = unsafe_wrap(Array,cr15+sizeof($T)*(9*IVX*ISX),(IVX,ISX))
            guxd = unsafe_wrap(Array,cr15+sizeof($T)*(10*IVX*ISX),(IVX,ISX))
            tau = unsafe_wrap(Array,cr15+sizeof($T)*(11*IVX*ISX),(IVX,ISX))
            dis = unsafe_wrap(Array,cr15+sizeof($T)*(12*IVX*ISX),(IVX,ISX))
            ctq = unsafe_wrap(Array,cr15+sizeof($T)*(13*IVX*ISX),(IVX,ISX))
            vti = unsafe_wrap(Array,cr15+sizeof($T)*(14*IVX*ISX),(IVX,ISX))
            reinf1 = unsafe_wrap(Array,cr15+sizeof($T)*(15*IVX*ISX),1)
            reinf = unsafe_wrap(Array,cr15+sizeof($T)*(15*IVX*ISX+1),1)
            reinf_cl = unsafe_wrap(Array,cr15+sizeof($T)*(15*IVX*ISX+2),1)
            acrit = unsafe_wrap(Array,cr15+sizeof($T)*(15*IVX*ISX+3),1)
            xstrip = unsafe_wrap(Array,cr15+sizeof($T)*(15*IVX*ISX+4),ISX)
            xoctr = unsafe_wrap(Array,cr15+sizeof($T)*(15*IVX*ISX+4+ISX),ISX)
            yoctr = unsafe_wrap(Array,cr15+sizeof($T)*(15*IVX*ISX+4+2*ISX),ISX)
            xssitr = unsafe_wrap(Array,cr15+sizeof($T)*(15*IVX*ISX+4+3*ISX),ISX)
            uinv_a = unsafe_wrap(Array,cr15+sizeof($T)*(15*IVX*ISX+4+4*ISX),(IVX,ISX))

            cr17 = cglobal((:cr17_, $(library)),$T)
            rmsbl = unsafe_wrap(Array,cr17,1)
            rmxbl = unsafe_wrap(Array,cr17+sizeof($T),1)
            rlx = unsafe_wrap(Array,cr17+2*sizeof($T),1)
            vaccel = unsafe_wrap(Array,cr17+3*sizeof($T),1)

            cr18 = cglobal((:cr18_, $(library)),$T)
            xsf = unsafe_wrap(Array,cr18,1)
            ysf = unsafe_wrap(Array,cr18+sizeof($T),1)
            xoff = unsafe_wrap(Array,cr18+sizeof($T)*2,1)
            yoff = unsafe_wrap(Array,cr18+sizeof($T)*3,1)
            xgmin = unsafe_wrap(Array,cr18+sizeof($T)*4,1)
            xgmax = unsafe_wrap(Array,cr18+sizeof($T)*5,1)
            ygmin = unsafe_wrap(Array,cr18+sizeof($T)*6,1)
            ygmax = unsafe_wrap(Array,cr18+sizeof($T)*7,1)
            dxyg = unsafe_wrap(Array,cr18+sizeof($T)*8,1)
            xcmin = unsafe_wrap(Array,cr18+sizeof($T)*9,1)
            xcmax = unsafe_wrap(Array,cr18+sizeof($T)*10,1)
            ycmin = unsafe_wrap(Array,cr18+sizeof($T)*11,1)
            ycmax = unsafe_wrap(Array,cr18+sizeof($T)*12,1)
            dxyc = unsafe_wrap(Array,cr18+sizeof($T)*13,1)
            dyoffc = unsafe_wrap(Array,cr18+sizeof($T)*14,1)
            xpmin = unsafe_wrap(Array,cr18+sizeof($T)*15,1)
            xpmax = unsafe_wrap(Array,cr18+sizeof($T)*16,1)
            ypmin = unsafe_wrap(Array,cr18+sizeof($T)*17,1)
            ypmax = unsafe_wrap(Array,cr18+sizeof($T)*18,1)
            dxyp = unsafe_wrap(Array,cr18+sizeof($T)*19,1)
            dyoffp = unsafe_wrap(Array,cr18+sizeof($T)*20,1)
            ysfp = unsafe_wrap(Array,cr18+sizeof($T)*21,1)
            gtick = unsafe_wrap(Array,cr18+sizeof($T)*22,1)

            qmat = cglobal((:qmat_, $(library)),$T)
            q = unsafe_wrap(Array,qmat,(IQX,IQX))
            dq = unsafe_wrap(Array,qmat+sizeof($T)*(IQX*IQX),IQX)
            dzdg = unsafe_wrap(Array,qmat+sizeof($T)*(IQX^2+IQX),IQX)
            dzdn = unsafe_wrap(Array,qmat+sizeof($T)*(IQX^2+2*IQX),IQX)
            dzdm = unsafe_wrap(Array,qmat+sizeof($T)*(IQX^2+3*IQX),IZX)
            dqdg = unsafe_wrap(Array,qmat+sizeof($T)*(IQX^2+3*IQX+IZX),IQX)
            dqdm = unsafe_wrap(Array,qmat+sizeof($T)*(IQX^2+4*IQX+IZX),IZX)
            qtan1 = unsafe_wrap(Array,qmat+sizeof($T)*(IQX^2+4*IQX+2*IZX),1)
            qtan2 = unsafe_wrap(Array,qmat+sizeof($T)*(IQX^2+4*IQX+2*IZX+1),1)
            z_qinf = unsafe_wrap(Array,qmat+sizeof($T)*(IQX^2+4*IQX+2*IZX+2),1)
            z_alfa = unsafe_wrap(Array,qmat+sizeof($T)*(IQX^2+4*IQX+2*IZX+3),1)
            z_qdof0 = unsafe_wrap(Array,qmat+sizeof($T)*(IQX^2+4*IQX+2*IZX+4),1)
            z_qdof1 = unsafe_wrap(Array,qmat+sizeof($T)*(IQX^2+4*IQX+2*IZX+5),1)
            z_qdof2 = unsafe_wrap(Array,qmat+sizeof($T)*(IQX^2+4*IQX+2*IZX+6),1)
            z_qdof3 = unsafe_wrap(Array,qmat+sizeof($T)*(IQX^2+4*IQX+2*IZX+7),1)

            vmat = cglobal((:vmat_, $(library)),$T)
            va = unsafe_wrap(Array,vmat,(3,2,IZX))
            vb = unsafe_wrap(Array,vmat+sizeof($T)*(3*2*IZX),(3,2,IZX))
            vdel = unsafe_wrap(Array,vmat+sizeof($T)*(2*3*2*IZX),(3,2,IZX))
            vm = unsafe_wrap(Array,vmat+sizeof($T)*(3*3*2*IZX),(3,IZX,IZX))
            vz = unsafe_wrap(Array,vmat+sizeof($T)*(3*3*2*IZX+IZX*IZX),(3,2))

            ci01 = cglobal((:ci01_, $(library)),Int32)
            iq1 = unsafe_wrap(Array,ci01,1)
            iq2 = unsafe_wrap(Array,ci01+sizeof(Int32),1)
            nsp = unsafe_wrap(Array,ci01+sizeof(Int32)*2,1)
            nqsp = unsafe_wrap(Array,ci01+sizeof(Int32)*3,1)
            kqtarg = unsafe_wrap(Array,ci01+sizeof(Int32)*4,1)
            iacqsp = unsafe_wrap(Array,ci01+sizeof(Int32)*5,1)
            nc1 = unsafe_wrap(Array,ci01+sizeof(Int32)*6,1)
            nname = unsafe_wrap(Array,ci01+sizeof(Int32)*7,1)
            nprefix = unsafe_wrap(Array,ci01+sizeof(Int32)*8,1)

            ci03 = cglobal((:ci03_, $(library)),Int32)
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

            ci04 = cglobal((:ci04_, $(library)),Int32)
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

            ci05 = cglobal((:ci05_, $(library)),Int32)
            iblte = unsafe_wrap(Array,ci05,ISX)
            nbl = unsafe_wrap(Array,ci05+sizeof(Int32)*ISX,ISX)
            ipan = unsafe_wrap(Array,ci05+sizeof(Int32)*(2*ISX),(IVX,ISX))
            isys = unsafe_wrap(Array,ci05+sizeof(Int32)*(2*ISX+IVX*ISX),(IVX,ISX))
            nsys = unsafe_wrap(Array,ci05+sizeof(Int32)*(2*ISX+2*IVX*ISX),1)
            itran = unsafe_wrap(Array,ci05+sizeof(Int32)*(2*ISX+2*IVX*ISX+1),ISX)

            ci06 = cglobal((:ci06_, $(library)),Int32)
            imxbl = unsafe_wrap(Array,ci06,1)
            ismxbl = unsafe_wrap(Array,ci06+sizeof(Int32),1)

            cl01 = cglobal((:cl01_, $(library)),Int32)
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

            cl02 = cglobal((:cl02_, $(library)),Int32)
            tforce = unsafe_wrap(Array,cl02,ISX)

            cc01 = cglobal((:cc01_, $(library)),UInt8)
            fname = unsafe_string(cc01+sizeof(UInt8)*0,64)
            name = unsafe_string(cc01+sizeof(UInt8)*64,48)
            ispars = unsafe_string(cc01+sizeof(UInt8)*(64+48),80)
            oname = unsafe_string(cc01+sizeof(UInt8)*(64+48+80),64)
            prefix = unsafe_string(cc01+sizeof(UInt8)*(2*64+48+80),64)
            pfname = unsafe_string(cc01+sizeof(UInt8)*(3*64+48+80),64)
            pfnamx = unsafe_string(cc01+sizeof(UInt8)*(4*64+48+80),64)
            namepol = unsafe_string(cc01+sizeof(UInt8)*(5*64+48+80),48)
            nameref = unsafe_string(cc01+sizeof(UInt8)*(5*64+2*48+80),48)

            cc02 = cglobal((:cc02_, $(library)),UInt8)
            labref = unsafe_string(cc02,32)

            cc03 = cglobal((:cc03_, $(library)),UInt8)
            vmxbl = unsafe_string(cc03,1)

            #var1
            var1 = cglobal((:var1_, $(library)),$T)
            x1 = unsafe_wrap(Array,var1,1)
            u1 = unsafe_wrap(Array,var1+sizeof($T),1)
            t1 = unsafe_wrap(Array,var1+sizeof($T)*2,1)
            d1 = unsafe_wrap(Array,var1+sizeof($T)*3,1)
            s1 = unsafe_wrap(Array,var1+sizeof($T)*4,1)
            ampl1 = unsafe_wrap(Array,var1+sizeof($T)*5,1)
            u1_uei = unsafe_wrap(Array,var1+sizeof($T)*6,1)
            u1_ms = unsafe_wrap(Array,var1+sizeof($T)*7,1)
            dw1 = unsafe_wrap(Array,var1+sizeof($T)*8,1)
            h1 = unsafe_wrap(Array,var1+sizeof($T)*9,1)
            h1_t1 = unsafe_wrap(Array,var1+sizeof($T)*10,1)
            h1_d1 = unsafe_wrap(Array,var1+sizeof($T)*11,1)
            m1 = unsafe_wrap(Array,var1+sizeof($T)*12,1)
            m1_u1 = unsafe_wrap(Array,var1+sizeof($T)*13,1)
            m1_ms = unsafe_wrap(Array,var1+sizeof($T)*14,1)
            r1 = unsafe_wrap(Array,var1+sizeof($T)*15,1)
            r1_u1 = unsafe_wrap(Array,var1+sizeof($T)*16,1)
            r1_ms = unsafe_wrap(Array,var1+sizeof($T)*17,1)
            v1 = unsafe_wrap(Array,var1+sizeof($T)*18,1)
            v1_u1 = unsafe_wrap(Array,var1+sizeof($T)*19,1)
            v1_ms = unsafe_wrap(Array,var1+sizeof($T)*20,1)
            v1_re = unsafe_wrap(Array,var1+sizeof($T)*21,1)
            hk1 = unsafe_wrap(Array,var1+sizeof($T)*22,1)
            hk1_u1 = unsafe_wrap(Array,var1+sizeof($T)*23,1)
            hk1_t1 = unsafe_wrap(Array,var1+sizeof($T)*24,1)
            hk1_d1 = unsafe_wrap(Array,var1+sizeof($T)*25,1)
            hk1_ms = unsafe_wrap(Array,var1+sizeof($T)*26,1)
            hs1 = unsafe_wrap(Array,var1+sizeof($T)*27,1)
            hs1_u1 = unsafe_wrap(Array,var1+sizeof($T)*28,1)
            hs1_t1 = unsafe_wrap(Array,var1+sizeof($T)*29,1)
            hs1_d1 = unsafe_wrap(Array,var1+sizeof($T)*30,1)
            hs1_ms = unsafe_wrap(Array,var1+sizeof($T)*31,1)
            hs1_re = unsafe_wrap(Array,var1+sizeof($T)*32,1)
            hc1 = unsafe_wrap(Array,var1+sizeof($T)*33,1)
            hc1_u1 = unsafe_wrap(Array,var1+sizeof($T)*34,1)
            hc1_t1 = unsafe_wrap(Array,var1+sizeof($T)*35,1)
            hc1_d1 = unsafe_wrap(Array,var1+sizeof($T)*36,1)
            hc1_ms = unsafe_wrap(Array,var1+sizeof($T)*37,1)
            rt1 = unsafe_wrap(Array,var1+sizeof($T)*38,1)
            rt1_u1 = unsafe_wrap(Array,var1+sizeof($T)*39,1)
            rt1_t1 = unsafe_wrap(Array,var1+sizeof($T)*40,1)
            rt1_ms = unsafe_wrap(Array,var1+sizeof($T)*41,1)
            rt1_re = unsafe_wrap(Array,var1+sizeof($T)*42,1)
            cf1 = unsafe_wrap(Array,var1+sizeof($T)*43,1)
            cf1_u1 = unsafe_wrap(Array,var1+sizeof($T)*44,1)
            cf1_t1 = unsafe_wrap(Array,var1+sizeof($T)*45,1)
            cf1_d1 = unsafe_wrap(Array,var1+sizeof($T)*46,1)
            cf1_ms = unsafe_wrap(Array,var1+sizeof($T)*47,1)
            cf1_re = unsafe_wrap(Array,var1+sizeof($T)*48,1)
            di1 = unsafe_wrap(Array,var1+sizeof($T)*49,1)
            di1_u1 = unsafe_wrap(Array,var1+sizeof($T)*50,1)
            di1_t1 = unsafe_wrap(Array,var1+sizeof($T)*51,1)
            di1_d1 = unsafe_wrap(Array,var1+sizeof($T)*52,1)
            di1_s1 = unsafe_wrap(Array,var1+sizeof($T)*53,1)
            di1_ms = unsafe_wrap(Array,var1+sizeof($T)*54,1)
            di1_re = unsafe_wrap(Array,var1+sizeof($T)*55,1)
            us1 = unsafe_wrap(Array,var1+sizeof($T)*56,1)
            us1_u1 = unsafe_wrap(Array,var1+sizeof($T)*57,1)
            us1_t1 = unsafe_wrap(Array,var1+sizeof($T)*58,1)
            us1_d1 = unsafe_wrap(Array,var1+sizeof($T)*59,1)
            us1_ms = unsafe_wrap(Array,var1+sizeof($T)*60,1)
            us1_re = unsafe_wrap(Array,var1+sizeof($T)*61,1)
            cq1 = unsafe_wrap(Array,var1+sizeof($T)*62,1)
            cq1_u1 = unsafe_wrap(Array,var1+sizeof($T)*63,1)
            cq1_t1 = unsafe_wrap(Array,var1+sizeof($T)*64,1)
            cq1_d1 = unsafe_wrap(Array,var1+sizeof($T)*65,1)
            cq1_ms = unsafe_wrap(Array,var1+sizeof($T)*66,1)
            cq1_re = unsafe_wrap(Array,var1+sizeof($T)*67,1)
            de1 = unsafe_wrap(Array,var1+sizeof($T)*68,1)
            de1_u1 = unsafe_wrap(Array,var1+sizeof($T)*69,1)
            de1_t1 = unsafe_wrap(Array,var1+sizeof($T)*70,1)
            de1_d1 = unsafe_wrap(Array,var1+sizeof($T)*71,1)
            de1_ms = unsafe_wrap(Array,var1+sizeof($T)*72,1)
            #var2
            var2 = cglobal((:var2_, $(library)),$T)
            x2 = unsafe_wrap(Array,var2,1)
            u2 = unsafe_wrap(Array,var2+sizeof($T),1)
            t2 = unsafe_wrap(Array,var2+sizeof($T)*2,1)
            d2 = unsafe_wrap(Array,var2+sizeof($T)*3,1)
            s2 = unsafe_wrap(Array,var2+sizeof($T)*4,1)
            ampl2 = unsafe_wrap(Array,var2+sizeof($T)*5,1)
            u2_uei = unsafe_wrap(Array,var2+sizeof($T)*6,1)
            u2_ms = unsafe_wrap(Array,var2+sizeof($T)*7,1)
            dw2 = unsafe_wrap(Array,var2+sizeof($T)*8,1)
            h2 = unsafe_wrap(Array,var2+sizeof($T)*9,1)
            h2_t2 = unsafe_wrap(Array,var2+sizeof($T)*10,1)
            h2_d2 = unsafe_wrap(Array,var2+sizeof($T)*11,1)
            m2 = unsafe_wrap(Array,var2+sizeof($T)*12,1)
            m2_u2 = unsafe_wrap(Array,var2+sizeof($T)*13,1)
            m2_ms = unsafe_wrap(Array,var2+sizeof($T)*14,1)
            r2 = unsafe_wrap(Array,var2+sizeof($T)*15,1)
            r2_u2 = unsafe_wrap(Array,var2+sizeof($T)*16,1)
            r2_ms = unsafe_wrap(Array,var2+sizeof($T)*17,1)
            v2 = unsafe_wrap(Array,var2+sizeof($T)*18,1)
            v2_u2 = unsafe_wrap(Array,var2+sizeof($T)*19,1)
            v2_ms = unsafe_wrap(Array,var2+sizeof($T)*20,1)
            v2_re = unsafe_wrap(Array,var2+sizeof($T)*21,1)
            hk2 = unsafe_wrap(Array,var2+sizeof($T)*22,1)
            hk2_u2 = unsafe_wrap(Array,var2+sizeof($T)*23,1)
            hk2_t2 = unsafe_wrap(Array,var2+sizeof($T)*24,1)
            hk2_d2 = unsafe_wrap(Array,var2+sizeof($T)*25,1)
            hk2_ms = unsafe_wrap(Array,var2+sizeof($T)*26,1)
            hs2 = unsafe_wrap(Array,var2+sizeof($T)*27,1)
            hs2_u2 = unsafe_wrap(Array,var2+sizeof($T)*28,1)
            hs2_t2 = unsafe_wrap(Array,var2+sizeof($T)*29,1)
            hs2_d2 = unsafe_wrap(Array,var2+sizeof($T)*30,1)
            hs2_ms = unsafe_wrap(Array,var2+sizeof($T)*31,1)
            hs2_re = unsafe_wrap(Array,var2+sizeof($T)*32,1)
            hc2 = unsafe_wrap(Array,var2+sizeof($T)*33,1)
            hc2_u2 = unsafe_wrap(Array,var2+sizeof($T)*34,1)
            hc2_t2 = unsafe_wrap(Array,var2+sizeof($T)*35,1)
            hc2_d2 = unsafe_wrap(Array,var2+sizeof($T)*36,1)
            hc2_ms = unsafe_wrap(Array,var2+sizeof($T)*37,1)
            rt2 = unsafe_wrap(Array,var2+sizeof($T)*38,1)
            rt2_u2 = unsafe_wrap(Array,var2+sizeof($T)*39,1)
            rt2_t2 = unsafe_wrap(Array,var2+sizeof($T)*40,1)
            rt2_ms = unsafe_wrap(Array,var2+sizeof($T)*41,1)
            rt2_re = unsafe_wrap(Array,var2+sizeof($T)*42,1)
            cf2 = unsafe_wrap(Array,var2+sizeof($T)*43,1)
            cf2_u2 = unsafe_wrap(Array,var2+sizeof($T)*44,1)
            cf2_t2 = unsafe_wrap(Array,var2+sizeof($T)*45,1)
            cf2_d2 = unsafe_wrap(Array,var2+sizeof($T)*46,1)
            cf2_ms = unsafe_wrap(Array,var2+sizeof($T)*47,1)
            cf2_re = unsafe_wrap(Array,var2+sizeof($T)*48,1)
            di2 = unsafe_wrap(Array,var2+sizeof($T)*49,1)
            di2_u2 = unsafe_wrap(Array,var2+sizeof($T)*50,1)
            di2_t2 = unsafe_wrap(Array,var2+sizeof($T)*51,1)
            di2_d2 = unsafe_wrap(Array,var2+sizeof($T)*52,1)
            di2_s2 = unsafe_wrap(Array,var2+sizeof($T)*53,1)
            di2_ms = unsafe_wrap(Array,var2+sizeof($T)*54,1)
            di2_re = unsafe_wrap(Array,var2+sizeof($T)*55,1)
            us2 = unsafe_wrap(Array,var2+sizeof($T)*56,1)
            us2_u2 = unsafe_wrap(Array,var2+sizeof($T)*57,1)
            us2_t2 = unsafe_wrap(Array,var2+sizeof($T)*58,1)
            us2_d2 = unsafe_wrap(Array,var2+sizeof($T)*59,1)
            us2_ms = unsafe_wrap(Array,var2+sizeof($T)*60,1)
            us2_re = unsafe_wrap(Array,var2+sizeof($T)*61,1)
            cq2 = unsafe_wrap(Array,var2+sizeof($T)*62,1)
            cq2_u2 = unsafe_wrap(Array,var2+sizeof($T)*63,1)
            cq2_t2 = unsafe_wrap(Array,var2+sizeof($T)*64,1)
            cq2_d2 = unsafe_wrap(Array,var2+sizeof($T)*65,1)
            cq2_ms = unsafe_wrap(Array,var2+sizeof($T)*66,1)
            cq2_re = unsafe_wrap(Array,var2+sizeof($T)*67,1)
            de2 = unsafe_wrap(Array,var2+sizeof($T)*68,1)
            de2_u2 = unsafe_wrap(Array,var2+sizeof($T)*69,1)
            de2_t2 = unsafe_wrap(Array,var2+sizeof($T)*70,1)
            de2_d2 = unsafe_wrap(Array,var2+sizeof($T)*71,1)
            de2_ms = unsafe_wrap(Array,var2+sizeof($T)*72,1)
            # vara
            vara = cglobal((:vara_, $(library)),$T)
            cfm = unsafe_wrap(Array,vara,1)
            cfm_ms = unsafe_wrap(Array,vara+sizeof($T),1)
            cfm_re = unsafe_wrap(Array,vara+sizeof($T)*2,1)
            cfm_u1 = unsafe_wrap(Array,vara+sizeof($T)*3,1)
            cfm_t1 = unsafe_wrap(Array,vara+sizeof($T)*4,1)
            cfm_d1 = unsafe_wrap(Array,vara+sizeof($T)*5,1)
            cfm_u2 = unsafe_wrap(Array,vara+sizeof($T)*6,1)
            cfm_t2 = unsafe_wrap(Array,vara+sizeof($T)*7,1)
            cfm_d2 = unsafe_wrap(Array,vara+sizeof($T)*8,1)
            xt = unsafe_wrap(Array,vara+sizeof($T)*9,1)
            xt_a1 = unsafe_wrap(Array,vara+sizeof($T)*10,1)
            xt_ms = unsafe_wrap(Array,vara+sizeof($T)*11,1)
            xt_re = unsafe_wrap(Array,vara+sizeof($T)*12,1)
            xt_xf = unsafe_wrap(Array,vara+sizeof($T)*13,1)
            xt_x1 = unsafe_wrap(Array,vara+sizeof($T)*14,1)
            xt_t1 = unsafe_wrap(Array,vara+sizeof($T)*15,1)
            xt_d1 = unsafe_wrap(Array,vara+sizeof($T)*16,1)
            xt_u1 = unsafe_wrap(Array,vara+sizeof($T)*17,1)
            xt_x2 = unsafe_wrap(Array,vara+sizeof($T)*18,1)
            xt_t2 = unsafe_wrap(Array,vara+sizeof($T)*19,1)
            xt_d2 = unsafe_wrap(Array,vara+sizeof($T)*20,1)
            xt_u2 = unsafe_wrap(Array,vara+sizeof($T)*21,1)
            # sav
            sav = cglobal((:sav_, $(library)),$T)
            c1sav = unsafe_wrap(Array,sav,NCOM)
            c2sav = unsafe_wrap(Array,sav+sizeof($T)*NCOM,NCOM)
            # var
            var = cglobal((:var_, $(library)),$T)
            dwte = unsafe_wrap(Array,var,1)
            qinfbl = unsafe_wrap(Array,var+sizeof($T),1)
            tkbl = unsafe_wrap(Array,var+sizeof($T)*2,1)
            tkbl_ms = unsafe_wrap(Array,var+sizeof($T)*3,1)
            rstbl = unsafe_wrap(Array,var+sizeof($T)*4,1)
            rstbl_ms = unsafe_wrap(Array,var+sizeof($T)*5,1)
            hstinv = unsafe_wrap(Array,var+sizeof($T)*6,1)
            hstinv_ms = unsafe_wrap(Array,var+sizeof($T)*7,1)
            reybl = unsafe_wrap(Array,var+sizeof($T)*8,1)
            reybl_ms = unsafe_wrap(Array,var+sizeof($T)*9,1)
            reybl_re = unsafe_wrap(Array,var+sizeof($T)*10,1)
            gambl = unsafe_wrap(Array,var+sizeof($T)*11,1)
            gm1bl = unsafe_wrap(Array,var+sizeof($T)*12,1)
            hvrat = unsafe_wrap(Array,var+sizeof($T)*13,1)
            bule = unsafe_wrap(Array,var+sizeof($T)*14,1)
            xiforc = unsafe_wrap(Array,var+sizeof($T)*15,1)
            amcrit = unsafe_wrap(Array,var+sizeof($T)*16,1)
            var = convert(Ptr{Int32}, var) # switch to booleans
            simi = unsafe_wrap(Array,var+sizeof($T)*17,1)
            tran = unsafe_wrap(Array,var+sizeof($T)*17+sizeof(Int32),1)
            turb = unsafe_wrap(Array,var+sizeof($T)*17+sizeof(Int32)*2,1)
            wake = unsafe_wrap(Array,var+sizeof($T)*17+sizeof(Int32)*3,1)
            trforc = unsafe_wrap(Array,var+sizeof($T)*17+sizeof(Int32)*4,1)
            trfree = unsafe_wrap(Array,var+sizeof($T)*17+sizeof(Int32)*5,1)
            # sys
            sys = cglobal((:sys_, $(library)),$T)
            vs1 = unsafe_wrap(Array,sys,(4,5))
            vs2 = unsafe_wrap(Array,sys+sizeof($T)*20,(4,5))
            vsrez = unsafe_wrap(Array,sys+sizeof($T)*40,4)
            vsr = unsafe_wrap(Array,sys+sizeof($T)*44,4)
            vsm = unsafe_wrap(Array,sys+sizeof($T)*48,4)
            vsx = unsafe_wrap(Array,sys+sizeof($T)*52,4)

            return XfoilGlobals{$T}(
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
                vmxbl,
                x1, u1, t1, d1, s1, ampl1, u1_uei, u1_ms, dw1, 
                h1, h1_t1, h1_d1, 
                m1, m1_u1, m1_ms, 
                r1, r1_u1, r1_ms, 
                v1, v1_u1, v1_ms, v1_re, 
                hk1, hk1_u1, hk1_t1, hk1_d1, hk1_ms, 
                hs1, hs1_u1, hs1_t1, hs1_d1, hs1_ms, hs1_re, 
                hc1, hc1_u1, hc1_t1, hc1_d1, hc1_ms, 
                rt1, rt1_u1, rt1_t1, rt1_ms, rt1_re, 
                cf1, cf1_u1, cf1_t1, cf1_d1, cf1_ms, cf1_re, 
                di1, di1_u1, di1_t1, di1_d1, di1_s1, di1_ms, di1_re, 
                us1, us1_u1, us1_t1, us1_d1, us1_ms, us1_re, 
                cq1, cq1_u1, cq1_t1, cq1_d1, cq1_ms, cq1_re, 
                de1, de1_u1, de1_t1, de1_d1, de1_ms,
                x2, u2, t2, d2, s2, ampl2, u2_uei, u2_ms, dw2, 
                h2, h2_t2, h2_d2, 
                m2, m2_u2, m2_ms, 
                r2, r2_u2, r2_ms, 
                v2, v2_u2, v2_ms, v2_re, 
                hk2, hk2_u2, hk2_t2, hk2_d2, hk2_ms, 
                hs2, hs2_u2, hs2_t2, hs2_d2, hs2_ms, hs2_re, 
                hc2, hc2_u2, hc2_t2, hc2_d2, hc2_ms, 
                rt2, rt2_u2, rt2_t2, rt2_ms, rt2_re, 
                cf2, cf2_u2, cf2_t2, cf2_d2, cf2_ms, cf2_re, 
                di2, di2_u2, di2_t2, di2_d2, di2_s2, di2_ms, di2_re, 
                us2, us2_u2, us2_t2, us2_d2, us2_ms, us2_re, 
                cq2, cq2_u2, cq2_t2, cq2_d2, cq2_ms, cq2_re, 
                de2, de2_u2, de2_t2, de2_d2, de2_ms, 
                cfm, cfm_ms, cfm_re, 
                cfm_u1, cfm_t1, cfm_d1, 
                cfm_u2, cfm_t2, cfm_d2, 
                xt, xt_a1, xt_ms, xt_re, xt_xf, 
                xt_x1, xt_t1, xt_d1, xt_u1, 
                xt_x2, xt_t2, xt_d2, xt_u2,
                c1sav, c2sav,
                dwte, 
                qinfbl, 
                tkbl, tkbl_ms, 
                rstbl, rstbl_ms, 
                hstinv, hstinv_ms, 
                reybl, reybl_ms, reybl_re, 
                gambl, gm1bl, hvrat, 
                bule, xiforc, amcrit, 
                simi, tran, turb, wake, 
                trforc, trfree,
                vs1, vs2, vsrez, vsr, vsm, vsx
                )
        end

    end

end
