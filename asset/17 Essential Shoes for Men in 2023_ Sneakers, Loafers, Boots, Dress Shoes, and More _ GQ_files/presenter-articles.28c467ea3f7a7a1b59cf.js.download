(()=>{var e,t={92788:(e,t,i)=>{const o=i(45697),n=i(67294),{useIntl:a}=i(5917),{useInView:r}=i(4225),{connector:l}=i(92078),s=i(98288),d=i(48655),c=i(73749).Z,{trackComponent:h}=i(40199),{googleAnalytics:u}=i(28601),{SeriesRecircAsset:p,SeriesRecircContainer:m,SeriesRecircContent:g,SeriesRecircDek:b,SeriesPromoHed:C,SeriesRecircReadMoreCta:f,SeriesRecircReadMoreCtaMobile:w,SeriesRecircTextContainer:y}=i(78268),v="Read more",S={[v]:c.readMoreDefault,"Read next":c.readNext},k=({ContentWrapper:e,readMoreCTA:t,seriesData:i})=>{const{formatMessage:o}=a();n.useEffect((()=>{h("SeriesRecirc")}),[]);const l=(({links:e})=>{let t;for(let i=0;i<e.length;i++){const{isCurrent:o}=e[i];if(o){for(let o=i+1;o<e.length;o++){const{isExternal:i,isPublished:n}=e[o]||{};if(n&&!i){t=e[o];break}}break}}return t})({links:i?.links||[]}),d=e=>{u.emitGoogleTrackingEvent("seriesrecirc",{title:e})},[c,v]=r();if(n.useEffect((()=>{v&&u.emitUniqueGoogleTrackingEvent("series-inview",{title:l?.promoHed})}),[v]),!i)return null;if(!l)return null;const{dek:k="",hed:E="",image:B=null,promoHed:T="",url:x=""}=l,M=B&&(B.segmentedSources||B.sources)&&{...B};return n.createElement(e,null,l&&n.createElement(m,{ref:c},n.createElement(g,null,n.createElement(w,null,o(S[t])),n.createElement(p,null,M&&n.createElement("a",{href:x,onClick:()=>d(T||E)},n.createElement(s,{...M,isLazy:!0}))),n.createElement(y,null,n.createElement(f,null,o(S[t])),(E||T)&&n.createElement(C,null,n.createElement("a",{href:x,onClick:()=>d(T||E)},n.createElement("span",{dangerouslySetInnerHTML:{__html:T||E}}))),k&&n.createElement(b,null,n.createElement("span",{dangerouslySetInnerHTML:{__html:k}}))))))};k.propTypes={ContentWrapper:o.elementType,readMoreCTA:o.string,seriesData:o.shape({hed:o.string,dek:o.string,image:o.object,links:o.arrayOf(o.shape({hed:o.string,dek:o.string,image:o.object,isCurrent:o.bool,isExternal:o.bool,isPublished:o.bool,promoDek:o.string,promoHed:o.string,url:o.string}))})},k.defaultProps={ContentWrapper:d.NarrowContentWithWideAdRail,readMoreCTA:v,seriesData:null},k.displayName="SeriesRecirc",e.exports=l(k,{keysToPluck:["seriesData"]})},1564:(e,t,i)=>{const{asConfiguredComponent:o}=i(36380),n=i(92788);e.exports=o(n,"SeriesRecirc")},78268:(e,t,i)=>{const o=i(71893).default,{BaseText:n}=i(74327),{calculateSpacing:a,getColorToken:r}=i(79720),{BREAKPOINTS:l}=i(85326),s=o.div.withConfig({displayName:"SeriesRecircAsset"})`
  grid-column: 1/5;

  @media (max-width: ${l.md}) {
    grid-column: 1/-1;
  }
`,d=o.div.withConfig({displayName:"SeriesRecircContainer"})`
  margin-top: ${a(4)};
  margin-bottom: ${a(5)};
  border-top: 2px solid
    ${({theme:e})=>r(e,"colors.discovery.body.white.heading")};
  padding-top: ${a(2)};
`,c=o.figure.withConfig({displayName:"SeriesRecircContent"})`
  margin-right: 0;
  margin-left: 0;

  @media (min-width: ${l.md}) {
    display: grid;
    grid-column-gap: ${a(3)};
    grid-template-columns: repeat(10, 1fr);
  }

  @media (max-width: ${l.md}) {
    display: block;
  }
`,h=o(n).withConfig({displayName:"SeriesRecircDek"})`
  @media (min-width: ${l.md}) {
    grid-column: 1/-1;
  }
`;h.defaultProps={as:"div",typeIdentity:"typography.definitions.consumptionEditorial.description-embed"},h.displayName="SeriesRecircDek";const u=o(n).withConfig({displayName:"SeriesPromoHed"})`
  a {
    text-decoration: none;
    color: inherit;

    &:hover {
      text-decoration: underline;
    }
  }

  @media (min-width: ${l.md}) {
    grid-column: 1/-1;
  }
`;u.defaultProps={as:"h2",bottomSpacing:.625,topSpacing:1,typeIdentity:"typography.definitions.discovery.subhed-section-tertiary"};const p=o(n).withConfig({displayName:"SeriesRecircReadMoreCta"})`
  @media (max-width: ${l.md}) {
    display: none;
  }
`;p.defaultProps={typeIdentity:"typography.definitions.discovery.subhed-section-primary"};const m=o(p).withConfig({displayName:"SeriesRecircReadMoreCtaMobile"})`
  display: none;

  @media (max-width: ${l.md}) {
    display: block;
    grid-column: 1/-1;
    margin-bottom: 1em;
  }
`,g=o.div.withConfig({displayName:"SeriesRecircTextContainer"})`
  @media (min-width: ${l.md}) {
    grid-column: 5/-1;
  }
`;e.exports={SeriesRecircAsset:s,SeriesRecircContainer:d,SeriesRecircContent:c,SeriesRecircDek:h,SeriesPromoHed:u,SeriesRecircReadMoreCta:p,SeriesRecircReadMoreCtaMobile:m,SeriesRecircTextContainer:g}},73749:(e,t,i)=>{const o=i(5917);t.Z=(0,o.defineMessages)({readMoreDefault:{id:"ReadMore.SeriesRecirc",defaultMessage:"Read more",description:"SeriesRecirc component Read more text"},readNext:{id:"ReadNext.SeriesRecirc",defaultMessage:"Read next",description:"SeriesRecirc component Read next text"}})},94328:(e,t,i)=>{const o=i(45697),n=i(67294),{asConfiguredComponent:a}=i(36380),{googleAnalytics:r}=i(28601),{trackComponent:l}=i(40199),{ChannelCloudContainer:s,ChannelCloudContainerWrapper:d,ChannelCloudHeaderContainer:c,ChannelCloudHeaderLink:h,ChannelCloudHeaderImage:u,ChannelCloudSubChannelContainer:p,ChannelCloudSubChannelLink:m,ChannelCloudSubChannelLinkText:g,ChannelCloudSubChannelText:b}=i(9114),C=({channels:e,headerLogo:t,headerLink:i,sectionHeader:o})=>(n.useEffect((()=>{l("ChannelCloud")}),[]),n.createElement(d,null,o&&n.createElement(c,null,t&&n.createElement(u,{src:t,alt:"logo"}),n.createElement(h,{href:i,hasLogo:Boolean(t),dangerouslySetInnerHTML:{__html:o}})),e&&n.createElement(s,null,e.map((e=>n.createElement(p,{key:e.id},n.createElement(b,{dangerouslySetInnerHTML:{__html:e.text}}),e.sub.map((e=>n.createElement(m,{key:e.id,href:e.url,onClick:()=>r.emitGoogleTrackingEvent("channelCloud",e)},n.createElement(g,{dangerouslySetInnerHTML:{__html:e.text}}))))))))));C.propTypes={channels:o.arrayOf(o.shape({id:o.string,text:o.string,originalText:o.string,sub:o.arrayOf(o.shape({id:o.string,text:o.string,url:o.string}))})).isRequired,headerLink:o.string,headerLogo:o.string,sectionHeader:o.string.isRequired},C.displayName="ChannelCloud",e.exports=a(C,"ChannelCloud")},9114:(e,t,i)=>{const o=i(71893).default,{BaseText:n,BaseLink:a}=i(74327),{calculateSpacing:r,getColorStyles:l}=i(79720),s="\n  display: flex;\n  align-items: center;\n",d=o.div.withConfig({displayName:"ChannelCloudContainerWrapper"})``,c=o.div.withConfig({displayName:"ChannelCloudHeaderContainer"})`
  ${s};

  border-width: 0 0 ${r(.25)};
  border-style: solid;
  padding: ${r(1)} ${r(3)} ${r(2)}
    0;

  ${({theme:e})=>l(e,"border-color","colors.interactive.base.black")};
`,h=o.img.withConfig({displayName:"ChannelCloudHeaderImage"})`
  width: 25px;
  height: 30px;
`,u=o(a).withConfig({displayName:"ChannelCloudHeaderLink"})`
  position: relative;
  top: ${r(.3)};
  padding-left: ${({hasLogo:e})=>e?r(1.3):0};
`;u.defaultProps={colorToken:"colors.interactive.base.black",typeIdentity:"typography.definitions.discovery.hed-bulletin-secondary"};const p=o.div.withConfig({displayName:"ChannelCloudContainer"})`
  display: flex;
  flex-wrap: wrap;
  padding: ${r(2.4)} ${r(6)}
    ${r(1)} 0;
`,m=o.div.withConfig({displayName:"ChannelCloudSubChannelContainer"})`
  ${s}
  flex-wrap: wrap;
  margin-bottom: ${r(2)};
  padding-right: ${r(2)};
`,g=o(n).withConfig({displayName:"ChannelCloudSubChannelText"})`
  padding-right: ${r(1)};

  &::after {
    content: ':';
  }
`;g.defaultProps={colorToken:"colors.interactive.base.black",typeIdentity:"typography.definitions.globalEditorial.context-primary"};const b=o(a).withConfig({displayName:"ChannelCloudSubChannelLink"})`
  ${s}
  padding-right: ${r(1)};

  svg {
    ${({theme:e})=>l(e,"fill","colors.consumption.body.standard.body-deemphasized")};

    position: relative;
    top: 2px;
    right: 2px;
    transform: rotate(-45deg);
    width: 12px;
    height: 12px;
    vertical-align: bottom;
  }

  &::after {
    ${({theme:e})=>l(e,"color","colors.consumption.body.standard.body-deemphasized")};

    position: relative;
    right: ${({hasIcon:e})=>e?r(.4):0};
    line-height: 0;
    content: ',';
  }

  &:last-child {
    &::after {
      content: '';
    }
  }
`,C=o(n).withConfig({displayName:"ChannelCloudSubChannelLinkText"})`
  line-height: 1.7em;

  &:hover {
    ${({theme:e})=>l(e,"color","colors.consumption.body.standard.link-hover")};
    text-decoration: underline;
    ${({theme:e})=>l(e,"text-decoration-color","colors.consumption.body.standard.link-hover")};
  }
`;C.defaultProps={colorToken:"colors.consumption.body.standard.body-deemphasized",typeIdentity:"typography.definitions.globalEditorial.context-primary"},e.exports={ChannelCloudContainer:p,ChannelCloudContainerWrapper:d,ChannelCloudHeaderContainer:c,ChannelCloudHeaderLink:u,ChannelCloudHeaderImage:h,ChannelCloudSubChannelContainer:m,ChannelCloudSubChannelLink:b,ChannelCloudSubChannelLinkText:C,ChannelCloudSubChannelText:g}},64220:(e,t,i)=>{e.exports=i(19904)},19904:(e,t,i)=>{const o=i(67294),{trackComponent:n}=i(40199);class a extends o.PureComponent{constructor(){super(...arguments),this.writeResourceHintLink=e=>{const{as:t,hint:i,href:o}=e,n=document.createElement("link");n.as=t,n.href=o,n.rel=i,document.head.appendChild(n)}}componentDidMount(){n("ResourceHint"),this.props&&this.writeResourceHintLink(this.props)}render(){return o.createElement(o.Fragment,null)}}e.exports=a},90554:(e,t,i)=>{const o=i(67294),n=i(45697),{connect:a}=i(59800),r=i(83253),l=i(28824),s=i(18322),{minThresholds:d}=i(28657),{GlobalStyle:c,CloseModalButtonDesktop:h,CloseModalButtonMobile:u,ModalContentWrapper:p}=i(23247),m=({children:e,closeModalText:t,isModalOpen:i,openModal:n,modalTransitionTime:a,showHeader:l,variations:m})=>{const{windowed:g}=m;o.useEffect((()=>{r.setAppElement("#app-root")}),[]);const b=o.useMemo((()=>{if(!l||!i||!document)return 0;const e=window?.innerWidth,t=document.getElementsByClassName("visual-link-banner--is-scrolled"),o=document.getElementsByClassName("site-navigation");return e<d.xl&&t.length&&t[0]?t[0].offsetHeight:o&&o.length&&o[0]?.offsetHeight||0}),[i,l]);return o.createElement(r,{isOpen:i,className:"genericModal",overlayClassName:{base:"genericModalOverlay",afterOpen:"genericModalOverlayAfterOpen",beforeClose:"genericModalOverlayBeforeClose"},bodyOpenClassName:"genericModalBodyOpen",shouldCloseOnEsc:!0,closeTimeoutMS:a},!g&&o.createElement(h,{btnStyle:"text",iconPosition:"before",hasEnableIcon:!0,onClickHandler:()=>n(!1),ButtonIcon:s.Close,label:t}),o.createElement(u,{ButtonIcon:s.Close,onClickHandler:()=>n(!1),onTouchStart:()=>n(!1),btnStyle:"outlined",isIconButton:!0,hasEnableIcon:!0,cornerRadius:"FullyRoundedCorner",size:"small",label:t,windowed:g}),o.createElement(p,null,e),o.createElement(c,{siteHeaderHeight:b,modalTransitionTime:a,windowed:g}))};m.propTypes={children:n.node.isRequired,closeModalText:n.string,isModalOpen:n.bool.isRequired,modalTransitionTime:n.number,openModal:n.func.isRequired,showHeader:n.bool,variations:n.shape({windowed:n.bool})},m.defaultProps={closeModalText:"",modalTransitionTime:300,showHeader:!1,variations:{windowed:!1}},e.exports=a((e=>({isModalOpen:e.isModalOpen||!1})),(e=>{const{openModal:t}=l(e);return{openModal:t}}))(m)},42045:(e,t,i)=>{const o=i(1961),{asConfiguredComponent:n}=i(36380),{asThemedComponent:a}=i(3517);e.exports=a(n(o,"GenericModal"))},23247:(e,t,i)=>{const{default:o,createGlobalStyle:n,css:a}=i(71893),r=i(7279),{ButtonLabel:l,ButtonIconWrapper:s}=i(41909),{maxScreen:d,minScreen:c,getColorToken:h,calculateSpacing:u,getZIndex:p}=i(79720),{maxThresholds:m}=i(28657),{BREAKPOINTS:g}=i(85326),b=o(r.Utility).withConfig({displayName:"CloseModalButton"})`
  position: absolute;
  color: ${({theme:e})=>h(e,"colors.interactive.base.dark")};

  svg {
    fill: ${({theme:e})=>h(e,"colors.interactive.base.dark")};
  }

  &:hover {
    color: ${({theme:e})=>h(e,"colors.interactive.base.dark")};
  }

  ${s} {
    display: flex;
  }
`,C=o(b).withConfig({displayName:"CloseModalButtonDesktop"})`
  left: 0;

  &:hover {
    text-decoration: underline;
    text-decoration-color: ${h("colors.interactive.base.primary")};
  }

  ${d(`${m.lg}px`)} {
    display: none;
  }

  ${l} {
    padding: 0;
  }
`,f=o(b).withConfig({displayName:"CloseModalButtonRight"})`
  top: ${u(2.5)};
  right: ${u(3)};
  left: unset;
  z-index: ${p("skipLink")};
  border: 1px solid ${h("colors.interactive.base.light")};
  width: ${u(5)};
  height: ${u(5)};

  &:hover {
    border: 1px solid ${h("colors.interactive.base.light")};
    background: ${h("colors.interactive.base.light")};
  }

  svg {
    vertical-align: bottom;
  }

  ${({windowed:e})=>e?a`
        display: flex;
      `:`\n    ${c(g.lg)} {\n      display: none;\n    }\n    `}
`,w=o.div.withConfig({displayName:"ModalContentWrapper"})`
  padding: 0;
  height: 100%;
`,y=n`
  .genericModalBodyOpen {
    overflow: hidden;
  }

  ${({siteHeaderHeight:e,modalTransitionTime:t})=>a`
      .genericModalOverlay {
        position: fixed;
        top: ${e}px;
        left: 0;
        ${t&&`transition: opacity ${t}ms ease-in-out;`};
        opacity: 0;
        z-index: ${p("hyperstitialLayer")};
        width: 100%;
        height: calc(100% - ${e}px);
      }
    `}
  
    
  ${({windowed:e,theme:t})=>!e&&a`
      .genericModal {
        background: ${h(t,"colors.interactive.base.white")};
        width: 100%;
        height: 100%;
        overflow-y: auto;
      }
    `}
  
  ${({windowed:e,theme:t})=>e&&a`
      .genericModalOverlay {
        background: rgba(
          ${h("colors.background.dark",{rgbOnly:!0})},
          0.4
        );
        display: flex;
        justify-content: center;
        justify-items: center;
      }

      .genericModal {
        max-height: 100%;
        overflow-y: scroll;
        background: ${h(t,"colors.interactive.base.white")};
        svg {
          fill: ${({theme:e})=>h(e,"colors.interactive.base.deemphasized")};
        }
        margin: auto;
        border-radius: ${u(1)};
        padding: ${u(6)};
        display: flex;
        gap: ${u(3)};
        position: relative;
        outline: none;
        @media (max-width: ${g.md}) {
          width: ${u(41)};
          padding: ${u(6)} ${u(3)};
        }
        @media (min-width: ${g.md}) and (max-width: ${g.xl}) {
          width: ${u(55)};
        }
        @media (min-width: ${g.max}) {
          width: ${u(70)};
        }
      }
    `}  

  .genericModalOverlayAfterOpen {
    opacity: 1;
  }
  
  .genericModalOverlayBeforeClose {
    opacity: 0;
  }
`;e.exports={GlobalStyle:y,CloseModalButtonDesktop:C,CloseModalButtonMobile:f,ModalContentWrapper:w}},1961:(e,t,i)=>{const{asVariation:o}=i(95545),n=i(90554);n.Default=o(n,"Default",{}),n.Windowed=o(n,"Windowed",{windowed:!0}),e.exports=n},67882:(e,t,i)=>{const o=i(94184),n=i(36968),a=i(27361),r=i(23493),l=i(23279),s=i(45697),d=i(67294),{injectIntl:c}=i(5917),h=i(67423).Z,u=i(92170),{getVariationNames:p}=i(95545),{I18nProvider:m}=i(5544),g=i(38134),b=i(32803),C=i(64220),f=i(64734),{connector:w}=i(92078),y=i(9370),v=i(42820),{googleAnalytics:S}=i(28601),k=i(48655),{PaywallCollaborator:E,withArticleTruncation:B}=i(13131),{InlineBarrier:T}=i(58980),x=i(1564),M=i(61784),R=i(6811),{withLightbox:A}=i(92267),P=i(4131),{Disclaimer:L}=i(5626),{BeopScript:I}=i(22665),{trackComponent:D}=i(40199),H=i(38309),N=i(15565),O=i(9855),$=i(43625),W=i(94328),{asConfiguredComponent:F}=i(36380),V=i(66518),_=i(71311),j=i(70734),{getNewsletterSubscriptions:G}=i(78918),U=i(50037),{MultiPackageRow:q}=i(42041),{getOverrideBehaviour:z}=i(66528),Z=i(42045),K=i(7891),X=i(74914),J=i(59185),{storageFactory:Y}=i(77779),Q=Y((()=>window.sessionStorage)),{ArticlePageBase:ee,ArticlePageGlobalStyle:te,ArticlePageLedeBackground:ie,ArticlePageContentBackGround:oe,ArticlePageBodyMobileTruncatedBtn:ne,ArticlePageContentFooterGrid:ae,ArticlePageIssueDate:re,ContentWrapperGrid:le,ArticlePageDisclaimer:se,ArticlePageDisclaimerGrid:de}=i(8172),ce=["TextAboveCenterSmallWithRule","TextAboveCenterFullBleedNoContributor","TextBelowCenterFullBleedNoContributor","InlineImage","SplitScreenImageRightFullBleed","SplitScreenImageRightInset","SplitScreenImageLeftInset","SplitScreenImageLeftFullBleed","TextAboveLeftSmallWithRule"],he=["TextOverlayContentHeader","TextOverlayContentHeaderWithLogo","TextOverlayCenterFullBleedGradient"],ue=e=>ce.includes(e),pe=(e,t)=>Boolean(t&&he.includes(e));class me extends d.Component{constructor(e){super(e),this.onHandleScroll=()=>{const e=window.scrollY<=this.pageContentEl.current.offsetTop+100;e!==this.state.hideNav&&this.setState({hideNav:e})},this.onResizeHandler=()=>{this.implementActionBarHeight()},this.onScrollHandler=()=>{this.implementActionBarHeight()},this.onTruncationDismiss=()=>{this.setState({isMobileTruncated:!this.state.isMobileTruncated}),S.emitUniqueGoogleTrackingEvent("article-read-more")},this.setCartoonLinkedGalleries=(e,t)=>{this.setState({sliderData:e},(()=>{t()}))},this.implementActionBarHeight=()=>{this.props.featureFlags?.enableActionBar&&this.articleWrapperRef?.current?.offsetHeight!==this.state.articleLength&&this.setState({articleLength:this.articleWrapperRef.current.offsetHeight})},this.fetchNewsletterSubscriptions=async e=>{try{const t=await G(e);if(200===t.status){const e=this.props.article.newsletterModules.filter((e=>e.priority)).sort(((e,t)=>e.priority-t.priority)).map((e=>e.newsletterId)),i=this.props.article.newsletter.newsletterId,o=t.newsletterSubscriptions.data.filter((e=>"SUBSCRIBED"===e.attributes.status)).map((e=>e.attributes.newsletterId));if(o.length){const t=e.filter((e=>!o.includes(e))),n=this.props.article.newsletterModules.find((e=>e.newsletterId===t[0]));o.includes(i)&&this.setState({newsletterData:{...this.state.newsletterData,...n}})}}}catch(e){console.log(e)}return{}},this.state={hideNav:this.props.article.headerProps.hasContentHeaderLogo,isMobileTruncated:!1,newsletterData:this.props.article.newsletter,sliderData:{},articleLength:0},this.pageContentEl=d.createRef(),this.articleWrapperRef=d.createRef();const t=e.hasLightbox?A(f,e.article.lightboxImages,e.hasSlideShow):f;this.TruncatedChunkedArticleContent=B(t,"body")}componentDidMount(){if(D("ArticlePage"),this.props.user.isAuthenticated&&this.props.hasDynamicNewsletterSignup&&this.props.article.newsletterModules?.length){const e=this.props.article.newsletterModules.map((e=>e.newsletterId)).toString(),t={amgUUID:this.props.user.amguuid,newsletterIds:e,userPlatformProxy:this.props.userPlatform.userPlatformProxy,provider:"sailthru",xClientID:this.props.userPlatform.xClientID};this.fetchNewsletterSubscriptions(t)}const{hasTruncationOnMobile:e}=this.props.article;if(e?this.setState({isMobileTruncated:!0}):this.setState({isMobileTruncated:!1}),this.props.article.headerProps.hasContentHeaderLogo){this.setState({hideNav:!0});const e=r(this.onHandleScroll,300);window.addEventListener("scroll",e)}const t="header"===a(this.props.article.interactiveOverride,"behavior"),i=a(this.props.componentConfig,"BasePage.settings.showNavWithHeaderOverride"),o=t&&!i;Q.setItem("nav_invisible",o),window.cns&&(window.cns.pageContext.content.pageStructure=this.props.article.pageStructure);const n=l(this.onScrollHandler,200),s=l(this.onResizeHandler,200);window.addEventListener("scroll",n),window.addEventListener("resize",s)}componentWillUnmount(){window.removeEventListener("scroll",this.onHandleScroll),Q.removeItem("nav_invisible")}render(){const{article:{id:e,body:t,channelCloudData:i,contentWarnings:r,affiliateDisclaimer:l,contributorSpotLightProps:s,hideAffiliateDisclaimer:c,hasAffiliateLinks:u,hasEventBannerHidden:p,hasInvertedHeadertheme:f,hideProductDisclaimer:w,channelMap:S,coralComments:B,hasNewsletterInBody:R,hasProduct:A,hasProductLisitingCarousel:D,hasTruncationOnMobile:G,headerProps:J,hideAutoDisclaimer:Y,hideContributorBio:Q,hideRecircList:ce,hideRecircMostPopular:he,hierarchy:me,shouldReplaceOutbrainWithVMG:ge,interactiveOverride:be,isAffiliateLinksDisabled:Ce,lang:fe,langTranslations:we,customHeading:ye={},recircs:ve=[],recircMostPopular:Se,recircRelated:ke,relatedVideo:Ee,interlude:Be,isHeroAdVisible:Te,isLicensedPartner:xe,licensedPartnerLink:Me,magazineDisclaimer:Re,paddingTop:Ae,tagCloud:Pe,newsletter:Le,shouldUsePersistentAd:Ie,showAgeGate:De,showBookmark:He,showBreadcrumbTrail:Ne,showHotelRecirc:Oe,signageConfig:$e,isUpcEnabled:We,isLinkStackEnabled:Fe,shouldShowFooterNewsletter:Ve,shouldPrioritizeSeriesPagination:_e,savingsUnitedCoupons:je=[],hasAffiliateLinkDisabled:Ge},showWriterBio:Ue,showFirstRailRecirc:qe,showAffiliateBelowContentHeader:ze,showAffiliateBelowContent:Ze,attributes:Ke,className:Xe,componentConfig:Je,shouldCenterDisclaimer:Ye,shouldHideBaseTopPadding:Qe,shouldHideSeriesNavigation:et,shouldHideSeriesRecirc:tt,shouldShowSeriesNavigationInFooter:it,pageBackgroundTheme:ot,dividerColor:nt,shouldEnableArticleBackground:at,shouldEnableFullArticleInverted:rt,shouldInheritDropcapColor:lt,showLinkStackInsideContentBody:st,featureFlags:dt,hasLightbox:ct,hasChannelNavigation:ht,hideSideBySideViewOnMobile:ut,showContributor:pt,showContributorSpotlight:mt,cartoonVariation:gt,hasRecircDriver:bt,linkList:Ct,related:ft,metadataVideo:wt,outbrain:yt,taboola:vt,productCarousel:St,user:kt,hasNewsletterForABTest:Et,intl:Bt,xlargePaddingTop:Tt,articleVariationForXlargePaddingTop:xt,beOp:Mt,hasDynamicDisclaimer:Rt,responsiveCartoonVariation:At,showGalleryCartoonPublishedDate:Pt,actionBarLargeScreenVariation:Lt,actionBarMobileScreenVariation:It,isActionBarStickyLargeScreen:Dt,actionBarButtons:Ht,showContributorImageOnMobile:Nt,showIssueDateInArticle:Ot,hasLinkbannerCrossSlideAnimation:$t,showEnhancedTextOverlay:Wt}=this.props,Ft=at&&ot,Vt=at&&nt,{hideNav:_t,articleLength:jt}=this.state,Gt=!!Et||R,{hasContentHeaderLogo:Ut,isFullBleedVideo:qt}=J;Ut&&(()=>{const e=a(Je,"ContentHeader.settings");n(Je,"ContentHeader.variation","TextOverlayWithLogo"),n(Je,"ContentHeader.settings",{...e,showLogo:!0,hideContributors:!1,hidePublishDate:!0,hideRubric:!1,hideShareButtons:!0})})();const zt=Q?void 0:J.contributors,{hasNativeShareButton:Zt,hasNewsletterOnPageTop:Kt,hasNewsletterWithoutWrapper:Xt,shouldEnableNativeShareOnDesktop:Jt,shouldRemoveBackgroundColor:Yt,enableEnhancedCartoonExperience:Qt,enableEnhancedArticleHeader:ei,enableActionBar:ti,variations:ii,showFullBleedBelow:oi,cneVideoEmbedProps:ni}=dt,ai={};let ri={};const li=a(Je,"ContentHeader.variation"),si=((e,t,i,o)=>{let n={};const{showContributorImageOnMobile:a,showEnhancedTextOverlay:r}=o;return e&&(ue(i)&&(n={shouldAlignCenterWhenNoCaption:!0}),"TextBelowCenterFullBleedNoContributor"===i&&(n={...n,isImagePositionBottomInSmallScreen:!0})),t&&(n={...n,hideSocialIcons:!0,hideSocialIconsOnMobile:!0,hasStickySocialIcons:!1}),ue(i)?n={...n,showContributorImageOnMobile:a}:pe(i,r)&&(n={...n,showContributorImage:!1,hideShareButtons:!0,showTextOverlayDek:!0,isDekInverted:!0,isReducedBottomMargin:!0,isStandardCaption:!0,isRubricInverted:!0,hasDekMarginReduced:!0,shouldLimitContentWidth:!0,showEnhancedPublishDate:!0}),n})(ei,ti,li,{showContributorImageOnMobile:Nt,showEnhancedTextOverlay:Wt});(ue(li)||pe(li,Wt))&&(ai.hasReducedBackgroundSpacing=Ot,ri={...Ot&&{articleIssueDateComponent:d.createElement((()=>J.issueDate?d.createElement(re,null,Bt.formatMessage(h.publishedInThe),` ${J.issueDate} `):null),null)}});const di=Qt?"InlineCartoon":At,ci=function(e){return"WithAdRail"===a(e,"ChunkedArticleContent.variation")?k.NarrowContentWithWideAdRail:k.WithMargins}(Je),hi="OneColumnNarrow"===a(Je,"ChunkedArticleContent.variation"),ui=k.DynamicGrid({startColumn:2,endColumn:12}),pi=Ye?L.TextCenterNoTopRule:L,mi=ve.map(((e,t)=>{const i=F(V,e.displayName),o=e.heading||"",{results:n,destinationPage:a,location:r,recommendedClickout:l,recommendedType:s}=e;return bt&&a?d.createElement(_,{key:`SummaryCollectionSplitColumns${t}`,recommendedItems:{items:n,recommendedType:s,recommendedClickout:l},guideItem:[a],location:r,shouldAppendReadMoreLinkForDek:!0}):d.createElement(j,{key:`ConnectedErrorBoundary${t}`},d.createElement(i,{related:e.related,heading:o,dividerColor:Vt,shouldEnableFullArticleInverted:rt}))})),gi=li===xt&&Tt?Tt:Ae,bi=Mt?.accountID||"",Ci=Mt?.isEnabled||!1,fi=ht&&d.createElement(N,null),wi="WithAdRail"===a(Je,"ChunkedArticleContent.variation"),yi=({children:e})=>d.createElement(le,{isadRail:wi,as:ci},d.createElement("div",{className:"body body__container"},d.createElement("div",{className:"container container--body"},d.createElement("div",{className:"container--body-inner"},e)))),vi="articleheader"===z(be),Si=a(J,"sponsoredContentHeaderProps"),ki=d.createElement(d.Fragment,null,d.createElement(P,null,d.createElement(ui,null,d.createElement(pi,{disclaimerHtml:l,hasTopRule:!1}))));return d.createElement(ee,{additionalNavigation:fi,attributes:Ke,shouldEnableFullArticleInverted:rt,channelMap:S,className:o("page--article",Xe),featureFlags:dt,hideNav:_t,hasContentHeaderLogo:Ut,hasEventBannerHidden:p,hasInvertedHeadertheme:f,hasFooterAdsMargins:!0,interactiveOverride:be,isHeroAdVisible:Te,hasBaseAds:!0,user:kt,lang:fe,customHeading:ye,shouldHideBaseTopPadding:Qe,shouldPrioritizeSeriesPagination:_e,pageBackgroundTheme:Ft,hasLinkbannerCrossSlideAnimation:(pe(li,Wt)||ue(li))&&$t},Ci&&d.createElement(I,{accountId:bi}),d.createElement(m,{locale:fe,translations:we},He&&d.createElement(O,null),u&&l&&!c&&!w&&!ze&&!Ze&&ki,Ne&&d.createElement(b,{hierarchy:me,shouldRemoveBackgroundColor:Yt}),d.createElement("article",{className:o("article main-content",{"article--inherited-dropcaps":lt}),lang:fe},Kt&&Le&&d.createElement($,{...Le,position:"article-page-top"}),J.sponsoredContentHeaderProps&&d.createElement(M,{...J.sponsoredContentHeaderProps,className:"light-theme"}),vi?d.createElement("div",{className:"interactive-override-container interactive-override-container--content_header",dangerouslySetInnerHTML:{__html:be.markup}}):d.createElement(ie,{ref:this.pageContentEl},d.createElement(v,{...J,...si,showFullHeaderViewInMobile:ei,hasNativeShareButton:Zt,shouldEnableNativeShareOnDesktop:Jt,isFullBleedVideo:qt,className:"article__content-header",hasLightbox:ct,stickySocialAnchorBottom:{selector:".content-bottom-anchor",edge:"bottom"},stickySocialAnchorTop:{selector:".body",edge:"top"},interactiveOverride:be,metadataVideo:wt,showBreadCrumb:Ne})),!et&&!it&&d.createElement(H,{className:"article__series-navigation",pageBackgroundTheme:Ft,dividerColor:Vt}),d.createElement(oe,{togglePaddingTop:gi,isMobileTruncated:this.state.isMobileTruncated,cartoonVariation:gt,"data-attribute-verso-pattern":"article-body",enableActionBar:ti,className:"article-body__content",...ai,ref:this.articleWrapperRef},d.createElement(X,{actionBarLargeScreenVariation:Lt,actionBarMobileScreenVariation:It,isActionBarStickyLargeScreen:Dt,actionBarButtons:Ht,articleLength:jt,showActionBar:ti}),G&&this.state.isMobileTruncated&&d.createElement(ne,{inputKind:"button",label:Bt.formatMessage(h.truncatedButtonLabel),onClickHandler:this.onTruncationDismiss}),a(Je,"ChannelCloud.settings.shouldShowChannelCloud",!1)&&i?.channels?.length>0&&d.createElement(k.ContentWithAdRailNarrow,null,d.createElement("div",null,d.createElement(W,{...i,...a(Je,"ChannelCloud.settings")}))),u&&l&&!c&&!w&&!Ze&&ze&&ki,t&&d.createElement(E,{body:t,linkList:Ct,isLinkStackEnabled:Fe&&st,component:this.TruncatedChunkedArticleContent,contributors:zt,hasProduct:A,affiliateDisclaimer:l,hasProductLisitingCarousel:D,hasTopSpacing:!!J.lede,interlude:Be,isAffiliateLinksDisabled:Ce,name:"chunked-article-content",shouldUsePersistentAd:Ie,hideRecircMostPopular:he,shouldEnableArticleBackground:at,shouldEnableFullArticleInverted:rt,pageBackgroundTheme:Ft,dividerColor:Vt,recircMostPopular:Se,showFirstRailRecirc:qe,tagCloud:Pe,hideAutoDisclaimer:Y,hideAffiliateDisclaimer:c,hideProductDisclaimer:w,responsiveCartoonVariation:di,hasCartoonFullWidth:Qt,setCartoonLinkedGalleries:this.setCartoonLinkedGalleries,showAffiliateBelowContent:Ze,hasAffiliateLinks:u,...ri}),t&&d.createElement(yi,null,d.createElement(T,null))),!tt&&d.createElement(x,{ContentWrapper:yi})),Ci&&d.createElement(yi,null,d.createElement("div",{className:"BeOpWidget"})),oi&&d.createElement(d.Fragment,null,d.createElement(v,{variations:ii,isFullBleedVideo:oi,cneVideoEmbedProps:ni})),u&&l&&!c&&!w&&Ze&&d.createElement(de,{as:ci,showAffiliateBelowContent:Ze},d.createElement(se,{showAffiliateBelowContent:Ze,disclaimerHtml:l})),Object.keys(St).length>0&&d.createElement(q,{key:"articleCarouselProduct",dataJourneyHook:"row-content"},d.createElement(U,{isUpcEnabled:We,...St,hasAffiliateLinkDisabled:Ge,copilotId:e})),d.createElement(ae,{as:y,className:o("article-body__footer",{"content-footer--mobile-truncated":this.state.isMobileTruncated}),channelMap:S,consumerMarketing:{position:"article-footer"},shouldEnableFullArticleInverted:rt,ContentWrapper:ci,contributors:zt,contributorSpotlight:s,coralComments:B,showWriterBio:Ue,hideContributorBio:Q,showContributorSpotlight:mt,showContributor:pt,hideRecircList:ce,hasNewsletterWithoutWrapper:Xt,isLicensedPartner:xe,isLinkStackEnabled:Fe&&!st,isNarrow:hi,isAdRail:wi,licensedPartnerLink:Me,linkList:Ct,magazineDisclaimer:Re,newsletter:kt.isAuthenticated?this.state.newsletterData:Le,outbrain:yt,taboola:vt,recircs:ve,recircListElements:mi,dividerColor:Vt,related:ft,recircRelated:ke,relatedVideo:Ee,showNewsletter:Ve||!Gt,showHotelRecirc:Oe,signageConfig:$e,tagCloud:Pe,shouldReplaceOutbrainWithVMG:ge,savingsUnitedCoupons:je,sponsoredProps:Si,hasDynamicDisclaimer:Rt,shouldShowSeriesNavigationInFooter:!et&&it,pageBackgroundTheme:Ft,currentPage:"article"}),De&&d.createElement(g,{content:{contentWarnings:r}}),!kt.isAuthenticated&&kt.hasUserAuthCheck&&d.createElement(C,{as:"document",hint:"prefetch",href:"/account/sign-in"})),Qt&&d.createElement(Z,{closeModalText:Bt.formatMessage(h.backToArticle)},d.createElement(K,{items:this.state.sliderData.items,showPublishedDate:Pt,responsiveCartoonVariation:"SliderCartoon",title:this.state.sliderData?.source?.hed,titleLinkURL:this.state.sliderData?.url,shouldUseModalStyle:!0,carouselPlacedIn:"modal",showHeadRecirc:!0,showNewsletter:!0})),d.createElement(te,{pageBackgroundTheme:Ft,dividerColor:Vt,shouldEnableFullArticleInverted:rt,hideSideBySideViewOnMobile:ut,isUpcEnabled:We}))}}me.propTypes={actionBarButtons:s.arrayOf(s.oneOf(["audio","bookmark"])),actionBarLargeScreenVariation:s.oneOf(p(J)),actionBarMobileScreenVariation:s.oneOf(p(J)),article:s.shape({body:s.array,channelCloudData:s.object,affiliateDisclaimer:s.string,contributorSpotLightProps:s.object,hideProductDisclaimer:s.bool,hideAffiliateDisclaimer:s.boolean,hasAffiliateLinks:s.boolean,channelMap:s.object,coralComments:s.shape({enableComments:s.bool,coralHostName:s.string}),contentWarnings:s.array,customHeading:s.object,hasAffiliateLinkDisabled:s.bool,hasEventBannerHidden:s.bool,hasInvertedHeadertheme:s.bool,hasNewsletterInBody:s.bool,hasProduct:s.bool,hasProductLisitingCarousel:s.bool,hasTruncationOnMobile:s.bool,headerProps:s.object.isRequired,hideAutoDisclaimer:s.bool,hideContributorBio:s.bool,hideRecircList:s.bool,hideRecircMostPopular:s.bool,hierarchy:s.array,id:s.string,interactiveOverride:s.shape({markup:s.string,behavior:s.string}),interlude:s.shape({...R.propTypes,isRailEligible:s.boolean}),isAffiliateLinksDisabled:s.bool,isHeroAdVisible:s.bool.isRequired,isLicensedPartner:s.bool,isLinkStackEnabled:s.bool,isUpcEnabled:s.bool,lang:s.string,langTranslations:s.object,licensedPartnerLink:s.string,lightboxImages:s.array.isRequired,magazineDisclaimer:s.shape({issueDate:s.string.isRequired,issueLink:s.string.isRequired,originalHed:s.string}),newsletter:s.object,newsletterModules:s.array,paddingTop:s.oneOf(["large"]),pageStructure:s.array,recircs:s.array,recircMostPopular:s.array,recircRelated:s.array,relatedVideo:s.shape({brand:s.string,related:s.any,useRelatedVideo:s.bool}),savingsUnitedCoupons:s.array,shouldPrioritizeSeriesPagination:s.bool,shouldShowFooterNewsletter:s.bool,shouldUsePersistentAd:s.bool,shouldReplaceOutbrainWithVMG:s.bool,showAgeGate:s.bool,showAffiliateBelowContent:s.bool,showAffiliateBelowContentHeader:s.bool,showBookmark:s.bool,showBreadcrumbTrail:s.bool,showHotelRecirc:s.bool,signageConfig:s.object,tagCloud:s.shape({tags:s.arrayOf(s.shape({tag:s.string.isRequired,url:s.string}))})}).isRequired,articleVariationForXlargePaddingTop:s.string,attributes:s.object,beOp:s.shape({accountID:s.string,isEnabled:s.boolean}),cartoonVariation:s.oneOf(["default","card"]),className:s.string,componentConfig:s.object,dividerColor:s.string,featureFlags:s.object,hasChannelNavigation:s.bool,hasDynamicDisclaimer:s.bool,hasDynamicNewsletterSignup:s.bool,hasLightbox:s.bool,hasLinkbannerCrossSlideAnimation:s.bool,hasNewsletterForABTest:s.bool,hasRecircDriver:s.bool,hasSlideShow:s.bool,hideNav:s.bool,hideSideBySideViewOnMobile:s.bool,intl:s.object,isActionBarStickyLargeScreen:s.bool,linkList:s.object,metadataVideo:s.shape({isLive:s.bool,premiereDate:s.string,series:s.string,videoLength:s.number,premiereGap:s.number}),outbrain:s.shape({canonicalUrl:s.string.isRequired,shouldDisplayAboveRecircList:s.bool,template:s.string.isRequired,widgetId:s.string}),pageBackgroundTheme:s.string,productCarousel:s.object,related:s.array,responsiveCartoonVariation:s.oneOf(p(u)),shouldCenterDisclaimer:s.bool,shouldEnableArticleBackground:s.bool,shouldEnableFullArticleInverted:s.bool,shouldHideBaseTopPadding:s.bool,shouldHideSeriesNavigation:s.bool,shouldHideSeriesRecirc:s.bool,shouldInheritDropcapColor:s.bool,shouldShowSeriesNavigationInFooter:s.bool,showAffiliateBelowContent:s.bool,showAffiliateBelowContentHeader:s.bool,showContributor:s.bool,showContributorImageOnMobile:s.bool,showContributorSpotlight:s.bool,showEnhancedTextOverlay:s.bool,showFirstRailRecirc:s.bool,showGalleryCartoonPublishedDate:s.bool,showIssueDateInArticle:s.bool,showLinkStackInsideContentBody:s.bool,showWriterBio:s.bool,taboola:s.shape({publisherId:s.string.isRequired,widgetScriptExcludeContentTypes:s.array,widgetScriptTextContentMode:s.string,widgetScriptTextContentContainer:s.string,widgetScriptTextContentPlacement:s.string}),user:s.object,userPlatform:s.object,xlargePaddingTop:s.string},me.defaultProps={cartoonVariation:"default",hasDynamicNewsletterSignup:!1,hasLightbox:!1,hasSlideShow:!0,metadataVideo:{},productCarousel:{},related:[],shouldCenterDisclaimer:!1,shouldEnableArticleBackground:!1,shouldEnableFullArticleInverted:!1,shouldHideSeriesNavigation:!0,shouldHideSeriesRecirc:!0,shouldInheritDropcapColor:!1,showAffiliateBelowContent:!1,showAffiliateBelowContentHeader:!1,showContributorImageOnMobile:!0,showGalleryCartoonPublishedDate:!0,showIssueDateInArticle:!1,showLinkStackInsideContentBody:!1,showWriterBio:!1},me.displayName="ArticlePage",e.exports=w(c(me),{keysToPluck:["article","beOp","componentConfig","featureFlags","linkList","metadataVideo","outbrain","productCarousel","related","showFirstRailRecirc","taboola","user","userPlatform"]})},80107:(e,t,i)=>{const o=i(67882),{asConfiguredComponent:n}=i(36380);e.exports=n(o,"ArticlePage")},67423:(e,t,i)=>{const o=i(5917);t.Z=(0,o.defineMessages)({truncatedButtonLabel:{id:"ArticlePage.TruncatedButtonLabel",defaultMessage:"Read Full Story",description:"ArticlePage component truncated button label"},backToArticle:{id:"ArticlePage.Back to article",defaultMessage:"Back to article",description:"Gallery slider back button text"},publishedInThe:{id:"ArticlePage.From the issue of",defaultMessage:"From the issue of",description:"Article page date text"}})},96370:function(e,t,i){var o=this&&this.__importDefault||function(e){return e&&e.__esModule?e:{default:e}};Object.defineProperty(t,"__esModule",{value:!0});const n=o(i(80107));(0,o(i(72010)).default)(n.default)}},i={};function o(e){var n=i[e];if(void 0!==n)return n.exports;var a=i[e]={id:e,loaded:!1,exports:{}};return t[e].call(a.exports,a,a.exports,o),a.loaded=!0,a.exports}o.m=t,e=[],o.O=(t,i,n,a)=>{if(!i){var r=1/0;for(c=0;c<e.length;c++){for(var[i,n,a]=e[c],l=!0,s=0;s<i.length;s++)(!1&a||r>=a)&&Object.keys(o.O).every((e=>o.O[e](i[s])))?i.splice(s--,1):(l=!1,a<r&&(r=a));if(l){e.splice(c--,1);var d=n();void 0!==d&&(t=d)}}return t}a=a||0;for(var c=e.length;c>0&&e[c-1][2]>a;c--)e[c]=e[c-1];e[c]=[i,n,a]},o.n=e=>{var t=e&&e.__esModule?()=>e.default:()=>e;return o.d(t,{a:t}),t},o.d=(e,t)=>{for(var i in t)o.o(t,i)&&!o.o(e,i)&&Object.defineProperty(e,i,{enumerable:!0,get:t[i]})},o.g=function(){if("object"==typeof globalThis)return globalThis;try{return this||new Function("return this")()}catch(e){if("object"==typeof window)return window}}(),o.o=(e,t)=>Object.prototype.hasOwnProperty.call(e,t),o.r=e=>{"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},o.nmd=e=>(e.paths=[],e.children||(e.children=[]),e),(()=>{var e={6486:0};o.O.j=t=>0===e[t];var t=(t,i)=>{var n,a,[r,l,s]=i,d=0;if(r.some((t=>0!==e[t]))){for(n in l)o.o(l,n)&&(o.m[n]=l[n]);if(s)var c=s(o)}for(t&&t(i);d<r.length;d++)a=r[d],o.o(e,a)&&e[a]&&e[a][0](),e[a]=0;return o.O(c)},i=globalThis.webpackChunkverso=globalThis.webpackChunkverso||[];i.forEach(t.bind(null,0)),i.push=t.bind(null,i.push.bind(i))})(),o.nc=void 0;var n=o.O(void 0,[4446,5698,2241,737,2506,5730,5565,5366,2803,9864,3528,9626,37,4276,7891,5029,4734],(()=>o(96370)));n=o.O(n)})();