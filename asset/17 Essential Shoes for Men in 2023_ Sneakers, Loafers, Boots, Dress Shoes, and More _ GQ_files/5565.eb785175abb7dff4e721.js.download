(globalThis.webpackChunkverso=globalThis.webpackChunkverso||[]).push([[5565],{47211:(e,t,n)=>{const i=n(45697),a=n(67294),{useState:o,useEffect:r}=n(67294),{connect:l}=n(59800),{loadData:s}=n(90949),d=n(69379),c=n(26895),{LoaderWrapper:g}=n(51159),p=n(62702),{trackComponent:h}=n(40199),m=({dataUrl:e,storeKey:t,data:n,setData:i,loaderType:l="Circle",...m})=>{a.useEffect((()=>{h("GroupedNavigationContainer")}),[]);const[u,y]=o(!1),[v,f]=o(!1),C=c[l];return r((()=>{!async function(){if(!n&&e){y(!0);try{const n=await s({url:`${e}`}),a=n?n[t]:[];i(t,a)}catch(e){f(!0)}finally{y(!1)}}}()}),[e]),a.createElement(a.Fragment,null,v&&a.createElement(p.ContentCenterNoBackground,{ariaLive:"polite",className:"brand-background__lede",dangerousHed:"Oops",dangerousDek:"something went wrong"}),u&&a.createElement(g,null,a.createElement(C,null)),n&&a.createElement(d,{groupedLinks:n,...m}))};m.propTypes={analyticsEventForFilter:i.string,data:i.array,dataUrl:i.string.isRequired,filterLabel:i.string,hasAtoZIndex:i.bool,hasFilter:i.bool,loaderType:i.string,setData:i.func.isRequired,storeKey:i.string.isRequired},e.exports=l(((e,{storeKey:t})=>({data:e.groupedNavigation?.[t]||null})),(e=>({setData:(t,n)=>{e({type:"MERGE_KEY",key:"groupedNavigation",value:{[t]:n}})}})))(m)},24616:(e,t,n)=>{e.exports=n(47211)},51159:(e,t,n)=>{const i=n(71893).default,{calculateSpacing:a}=n(79720),o=i.div.withConfig({displayName:"LoaderWrapper"})`
  padding-top: ${a(6)};
  text-align: center;
`;e.exports={LoaderWrapper:o}},66744:(e,t,n)=>{const i=n(67294),{useState:a,useRef:o,useEffect:r}=n(67294),l=n(45697),{useIntl:s}=n(5917),d=n(23493),c=n(58376).Z,{connector:g}=n(92078),{trackComponent:p}=n(40199),{googleAnalytics:h}=n(28601),m=n(24616),u=n(22397),y=n(81768),v=n(55754),{INITIAL_STATE:f,computeScroll:C}=n(37332),{ChannelNavigationWrapper:b,ChannelNavigationContainer:k,ChannelNavigationContent:w,ChannelNavigationLogoWrapper:N,ChannelNavigationLogo:$,ChannelNavigationScrollViewLogo:x,ChannelNavigationLinksWrapper:L,ChannelNavigationLinksList:E,ChannelNavigationLinkItem:A,ChannelNavigationLink:I,ChannelNavigationChannelDrawer:S,ChannelNavigationGroupedNavigation:T,ChannelNavigationGlobalDrawer:D,ChannelNavigationAccount:M,ChannelNavigationToggle:G,ChannelNavigationSecondaryMenu:B,ChannelNavigationBookmarkAlert:_}=n(38621),F=({accountProps:e,isFixed:t,logo:n,isAccountsEnabled:l,scrollViewLogo:g,channelNavigationLinks:F,channelNavigationLogoBaseUrl:W,overrideChannelNavigationLinks:U,secondaryMenuProps:Z,showExternalProfileLink:O,loaderType:P,onNavigationLinkClick:R,activeLinkIndex:H,user:V,hideLinksOnMobile:z,hideDrawerScroll:j})=>{i.useEffect((()=>{p("ChannelNavigation")}),[]);const[q,K]=a(!1),[X,Y]=i.useState(!1),[J,Q]=a(null),[ee,te]=a(f),ne=o(null),{formatMessage:ie}=s(),ae=U||F;i.useEffect((()=>{const e=e=>{"Escape"===e.key&&X&&(h.emitGoogleTrackingEvent("hamburger-menu-"+(X?"collapsed":"expanded")),Y(!1))};return X&&window.addEventListener("keyup",e),()=>window.removeEventListener("keyup",e)}),[X]);const oe=()=>{te((e=>({...C(e),scrollHeight:(document?.body?.scrollHeight??0)-(document?.body?.clientHeight??0)})))};r((()=>{const e=d(oe,100);return window.addEventListener("scroll",e,{passive:!0}),()=>window.removeEventListener("scroll",e)}),[t]);const{direction:re,pageYOffset:le,scrollHeight:se}=ee,de=X?y:v,ce=t||le>0,ge=t||"up"!==re&&le>0||se===le;return ae&&ae.length?i.createElement(b,{isFixed:ce},i.createElement(k,{ref:ne,"data-testid":"channel-navigation",hideLinksOnMobile:z},i.createElement(w,{isFixed:ce,isScrollingDown:ge},n&&g&&i.createElement(N,{isFixed:ce,isScrollingDown:ge},i.createElement("a",{href:W},i.createElement($,{isScrollingDown:ge,...n}),ge&&i.createElement(x,{isScrollingDown:ge,...g})))),i.createElement(L,{isScrollingDown:ge,hideLinksOnMobile:z},i.createElement(E,{"data-journey-hook":"channel-navigation"},ae.map(((e,t)=>{const n=void 0===H||t===H;return i.createElement(A,{key:e.key||e.type},i.createElement(I,{tabIndex:0,isActive:n,label:e.text,href:e.href,as:"a",isInline:!0,onClick:t=>{e.apiEndpoint&&(t.preventDefault(),K(!0),Q({...e})),R&&R(e),h.emitGoogleTrackingEvent(e.analyticsEvent)}},e.text))})))),O&&i.createElement(M,{isScrollingDown:ge,isAccountWithAvatar:!1,signInLabel:O?.signInLabel,signInLink:O?.signInLink,user:{isAuthenticated:!1}}),!O&&l&&V&&i.createElement(M,{isScrollingDown:ge,isAccountWithAvatar:e.accountIconInverted&&!0,accountLinks:e.accountLinks,savedStoriesLabel:e?.savedStoriesLabel,accountBookmarkAlertLabel:e?.accountBookmarkAlertLabel,accountLabel:e?.accountLabel,accountAvatar:e.accountIconInverted,signInLabel:e?.signInLabel,signInLink:e?.signInLink,signOutLink:e?.signOutLink,user:V,className:"standard-navigation__section--utility-links-login",tooltip:e.tooltip}),i.createElement(G,{tabIndex:0,isIconButton:!0,isScrollingDown:ge,ButtonIcon:de,label:"Open Navigation Menu",onClickHandler:()=>{h.emitGoogleTrackingEvent("hamburger-menu-"+(X?"collapsed":"expanded")),Y(!X)},role:"button","aria-expanded":X}),i.createElement(_,{dataTestId:"BookmarkAlert"},i.createElement("p",null,ie(c.bookmarkAlertLabel)," ",i.createElement("a",{href:"/account/saved/images"},ie(c.bookmarkAlertMyAccountLabel))))),!!J&&i.createElement(S,{isOpen:q,onClose:()=>{K(!1)},hideDrawerScroll:j,contentLabel:ie(c.channelDrawerContentLabel),showCloseButton:!0,className:"channel-navigation-drawer"},i.createElement(T,null,i.createElement(m,{storeKey:J.key,dataUrl:J.apiEndpoint,hasAtoZIndex:J.hasAtoZIndex,loaderType:P,hasFilter:J.hasFilter,filterLabel:J.filterLabel}))),i.createElement(D,{isOpen:X,onClose:()=>te(!X),contentLabel:"Navigation Menu"},i.createElement(B,{isFixed:ce},!l&&O?i.createElement(u,{...Z,user:{isAuthenticated:!1},isAccountsEnabled:!0,contentAlign:"center"}):i.createElement(u,{accountProps:e,...Z,user:V,isAccountsEnabled:l,contentAlign:"center"})))):null},W=l.shape({text:l.string,key:l.string,apiEndpoint:l.string});F.defaultProps={accountProps:{accountLinks:[]},hideLinksOnMobile:!1,isAccountsEnabled:!1},F.propTypes={accountProps:l.object,activeLinkIndex:l.number,channelNavigationLinks:l.arrayOf(W),channelNavigationLogoBaseUrl:l.string,hideDrawerScroll:l.bool,hideLinksOnMobile:l.bool,isAccountsEnabled:l.bool,isFixed:l.bool,loaderType:l.string,logo:l.object,onNavigationLinkClick:l.func,overrideChannelNavigationLinks:l.arrayOf(W),scrollViewLogo:l.object,secondaryMenuProps:l.object,showExternalProfileLink:l.object,user:l.shape({isAuthenticated:l.bool.isRequired})},F.displayName="ChannelNavigation",e.exports=g(F,{keysToPluck:["user","isAccountsEnabled","accountProps"]})},15565:(e,t,n)=>{const{asConfiguredComponent:i}=n(36380),a=n(66744);e.exports=i(a,"ChannelNavigation")},38621:(e,t,n)=>{const i=n(71893).default,{calculateSpacing:a,getColorToken:o,getColorStyles:r,getTypographyStyles:l,getZIndex:s,maxScreen:d}=n(79720),{hideVisually:c}=n(65496),{BREAKPOINTS:g,ZINDEX_MAP:p}=n(85326),{maxThresholds:h}=n(28657),m=n(7279),u=n(38167),y=n(63030),v=n(48655),f=n(70009),C=n(74882),{SecondaryMenuAccount:b}=n(51275),{StandardNavigationDropdown:k,StandardNavigationAccountLabel:w,AccountDropdownToggleIcon:N,NavigationAccountSignIn:$,StandardNavigationSuccessLoginAlert:x,NavigationAccountIconWrapper:L,JourneyUnitDivider:E,AccountDropdownBookmarkAlert:A}=n(87649),{GridItem:I}=n(14134),{SignOutButtonWrapper:S}=n(7042),{AlertMessage:T}=n(19195),D=i.nav.withConfig({displayName:"ChannelNavigationWrapper"})`
  position: relative;
  z-index: ${p.persistentTopLayer};
  max-height: ${a(24)};
  ${({isFixed:e})=>e&&"\n      position: fixed;\n      top: 0;\n      right: 0;\n      left: 0;\n      "};
`;D.displayName="ChannelNavigationWrapper";const M=i.div.withConfig({displayName:"ChannelNavigationContainer"})`
  position: relative;
  ${({hideLinksOnMobile:e})=>`padding-bottom: ${a(e?0:7)};`}

  @media (min-width: ${g.md}) {
    border-bottom: 1px solid rgba(51, 51, 51, 1);
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    background: ${({theme:e})=>o(e,"colors.consumption.lead.inverted.background")};
    padding-bottom: 0;
  }
`,G=i.div.withConfig({displayName:"ChannelNavigationContent"})`
  display: flex;
  position: relative;
  flex-wrap: wrap;
  z-index: 1;
  margin: 0 auto;
  border-bottom: 1px solid
    ${({theme:e})=>o(e,"colors.consumption.lead.inverted.divider")};
  background: ${({theme:e})=>o(e,"colors.consumption.lead.inverted.background")};
  @media (min-width: ${g.md}) {
    flex-wrap: ${({isScrollingDown:e})=>e?"nowrap":"wrap"};
  }
`,B=i.div.withConfig({displayName:"ChannelNavigationLogoWrapper"})`
  display: flex;
  justify-content: center;
  margin: 0 auto;
  padding: ${a(1)};

  @media (min-width: ${g.md}) {
    ${({isScrollingDown:e})=>e?`\n      left: ${a(3)};\n      position: absolute;\n      padding: ${a(1)};\n      width: unset;\n    `:`\n      width:100vw; \n      padding: ${a(1)} 0;\n    `}
  }
`,_=i(y).withConfig({displayName:"ChannelNavigationLogo"})`
  width: 96px;
  @media (min-width: ${g.md}) {
    display: flex;
    padding: ${a(1)} 0;
    width: 168px;
    height: 88px;
    ${({isScrollingDown:e})=>e&&`\n        ${c()}\n      `};
  }
`,F=i(y).withConfig({displayName:"ChannelNavigationScrollViewLogo"})`
  @media (max-width: ${g.md}) {
    ${c()}
  }
  padding: ${a(.5)} 0;
  width: 83px;
  height: unset;
`,W=i(v.NoMargins).withConfig({displayName:"ChannelNavigationLinksWrapper"})`
  > ${I} {
    grid-column: 1;
    margin: 0 auto;
    text-align: center;
    @media (min-width: ${g.md}) {
      grid-column: 2 / span 10;
    }
  }

  position: absolute;
  top: auto;
  transition: transform 0.5s ease-in-out;
  background: ${({theme:e})=>o(e,"colors.consumption.lead.inverted.background")};
  width: 100%;
  overflow-x: auto;
  overflow-y: hidden;

  ${({isScrollingDown:e})=>e?"transform: translateY(-100%);":"transform: translateY(0%);"}

  @media (min-width: ${g.md}) {
    display: grid;
    position: initial;
    align-items: center;
    justify-content: center;
    transform: none;
    margin: 0 calculateSpacing(14.5);
    height: 64px;
  }

  @media (max-width: ${h.md}px) {
    ${({hideLinksOnMobile:e})=>e?`${c()};`:`padding: ${a(2)} 0 ${a(2)}\n      ${a(3)};\n      &::after {\n        background: linear-gradient(\n          to right,\n          rgba(0, 0, 0, 0.01) 31.25%,\n          ${({theme:e})=>o(e,"colors.consumption.lead.inverted.background")}\n            100%\n        );\n        content: '';\n        height: ${a(4)};\n        width: 48px;\n        bottom: ${a(2)};\n        right: 0;\n        position: sticky;\n        pointer-events: none;`}
  }
`,U=i.ul.withConfig({displayName:"ChannelNavigationLinksList"})`
  display: flex;
  margin: 0 auto;
  list-style: none;
  text-align: center;
  padding-inline-start: 0;

  @media (max-width: ${g.md}) {
    ${({hideLinksOnMobile:e})=>e?`${c()};`:""}
  }
`,Z=i.li.withConfig({displayName:"ChannelNavigationLinkItem"})`
  padding-right: ${a(2)};

  &:last-child {
    padding-right: 0;
  }

  @media (min-width: ${g.md}) {
    margin-right: 0;
    padding-right: ${a(3)};
  }
`,O=i.a.withConfig({displayName:"ChannelNavigationLink"})`
  ${({theme:e})=>l(e,"typography.definitions.foundation.link-primary")}

  border: none;
  min-width: auto;
  text-decoration: none;
  white-space: nowrap;
  color: rgb(
    ${({theme:e})=>o(e,"colors.consumption.lead.inverted.link",{rgbOnly:!0})},
    ${({isActive:e})=>e?"1":"0.6"}
  );

  &:hover {
    color: ${({theme:e})=>o(e,"colors.consumption.lead.inverted.link-hover")};
  }
`,P=i(u.Right).withConfig({displayName:"ChannelNavigationChannelDrawer"})`
  &&& {
    ${({hideDrawerScroll:e})=>e&&"\n        height: 100%;\n    "}
  }
  @media (min-width: ${g.md}) {
    width: 400px;
    max-width: 400px;

    && {
      height: 100%;
    }
  }
`,R=i.div.withConfig({displayName:"ChannelNavigationGroupedNavigation"})`
  padding: 0 ${a(4)} ${a(2)};
  height: 100%;
`,H=i(u).withConfig({displayName:"ChannelNavigationGlobalDrawer"})`
  height: auto;
`,V=i(f).withConfig({displayName:"ChannelNavigationAccount"})`
  position: absolute;
  right: ${a(3)};
  border: none;
  background: transparent;
  padding: ${a(1)} ${a(1.5)};

  @media (min-width: ${g.md}) {
    left: inherit;
    padding: 0;
    min-width: auto;
  }

  &&&.standard-navigation-account {
    position: absolute;
    top: ${({isScrollingDown:e})=>a(e?1.4:14.4)};
    margin-right: ${({isAccountWithAvatar:e})=>a(e?4:3)};
    margin-left: ${a(1.5)};
    width: ${a(12)};
    height: ${a(6)};
    white-space: nowrap;
  }

  ${T} {
    white-space: normal;
  }

  @media (max-width: ${g.md}) {
    // The below line is to surface SignIn in mobile devices with avatar enabled
    // and hide the SignIn in mobile devices if avatar is not enabled
    ${({isAccountWithAvatar:e})=>!e&&"display: none;"}
    &&&.standard-navigation-account {
      top: ${a(.4)};
      z-index: 1;
      margin-right: ${a(2)};
    }
  }

  ${w} {
    justify-content: flex-end;
    color: ${({theme:e})=>o(e,"colors.interactive.base.white")};

    &:hover,
    &:link,
    &:visited,
    &:active {
      color: ${({theme:e})=>o(e,"colors.interactive.base.white")};

      svg {
        path {
          fill: ${({theme:e})=>o(e,"colors.interactive.base.white")};
        }
      }
    }

    ${L}:hover {
      ${({theme:e})=>r(e,"background","colors.interactive.base.dark")};
      border-color: transparent;
    }

    // Since, there is no journey unit rendered in ChannelNav,
    // explicitly setting the display of the divider line to none
    ${E} {
      display: none;
    }
  }

  .standard-navigation-account--icon,
  ${N} {
    svg {
      path {
        fill: ${({theme:e})=>o(e,"colors.interactive.base.white")};
      }
    }
  }

  ${k} {
    top: ${a(6)};
    right: ${a(.8)};
    background-color: ${({theme:e})=>o(e,"colors.consumption.lead.inverted.background")};
    color: ${({theme:e})=>o(e,"colors.consumption.lead.inverted.link")};

    &::before,
    &::after {
      content: none;
    }

    @media (min-width: ${g.md}) {
      right: ${a(.4)};
    }
  }

  ${k} .account-links__navigation {
    background-color: ${({theme:e})=>o(e,"colors.consumption.lead.inverted.background")};

    .navigation__list-item {
      &:hover {
        background-color: ${({theme:e})=>o(e,"colors.consumption.lead.inverted.background")};
      }

      .navigation__link {
        ${({theme:e})=>l(e,"typography.definitions.foundation.link-secondary")};
        color: ${({theme:e})=>o(e,"colors.consumption.lead.inverted.link")};
      }
    }
  }

  ${$} {
    ${({theme:e})=>r(e,"color","colors.consumption.body.inverted.body")};
  }

  ${k}

  ${S}.account-links__sign-out {
    ${({theme:e})=>l(e,"typography.definitions.foundation.link-secondary")};
    color: ${o("colors.consumption.lead.inverted.link")};

    &:hover {
      background-color: ${o("colors.consumption.lead.standard.divider")};
      color: ${o("colors.consumption.lead.standard.link")};
    }
  }

  ${x} {
    top: ${a(6.75)};
    background-color: ${o("colors.interactive.base.black")};
    ${({theme:e})=>r(e,"border-color","colors.discovery.body.black.border")};

    ${d(g.md)} {
      left: -${a(30)};
    }

    .alert-arrow {
      &::before {
        border-color: transparent transparent
          ${o("colors.discovery.body.black.border")};
      }

      &::after {
        border-color: transparent transparent
          ${o("colors.interactive.base.black")};
      }
    }

    .alert-message {
      padding: ${a(3)} ${a(2)};
      max-width: fit-content;
      white-space: normal;
      ${({theme:e})=>r(e,"color","colors.consumption.lead.inverted.context-signature")};
    }

    .close-alert-button {
      svg {
        ${({theme:e})=>r(e,"fill","colors.interactive.base.white")};
      }
    }
  }
  // since AccountDropdownBookmarkAlert is not used in channel navigation
  // explicitly setting display to none
  ${A} {
    display: none;
  }
`,z=i(m.Utility).withConfig({displayName:"ChannelNavigationToggle"})`
  position: absolute;
  top: 14px;
  right: ${a(2)};
  z-index: ${s("dropdown")};
  border: none;
  background: transparent;
  padding: ${a(1)} ${a(1.5)};
  width: ${a(4)};
  height: ${a(4)};
  @media (min-width: ${g.md}) {
    top: ${({isScrollingDown:e})=>e?a(2.5):"124px"};
    left: inherit;
    padding: 0;
    min-width: auto;
  }

  & > div {
    position: absolute;
  }

  path {
    fill: ${({theme:e})=>o(e,"colors.consumption.lead.inverted.link")};
  }

  &:focus {
    outline: 2px auto -webkit-focus-ring-color;
    border: unset;
    background: transparent;
  }

  &:hover {
    border-width: unset;
    border-style: none;
    border-color: transparent;
    background: transparent;

    path {
      fill: ${({theme:e})=>o(e,"colors.consumption.lead.inverted.link-hover")};
    }
  }
`,j=i.div.withConfig({displayName:"ChannelNavigationSecondaryMenu"})`
  padding-top: ${({isFixed:e})=>e?0:"62px"};
  height: 100%;
  ${b} {
    display: block;
  }

  @media (min-width: ${g.md}) {
    padding-top: ${({isFixed:e})=>e?0:"160px"};
  }

  @media (min-width: ${g.lg}) {
    height: 100vh;
    ${b} {
      display: none;
    }
  }
`,q=i(C).withConfig({displayName:"ChannelNavigationBookmarkAlert"})`
  @media (min-width: ${g.lg}) {
    display: flex;
    top: ${a(8.25)};
    left: ${a(163.5)};
  }
`;e.exports={ChannelNavigationBookmarkAlert:q,ChannelNavigationWrapper:D,ChannelNavigationContainer:M,ChannelNavigationContent:G,ChannelNavigationLogoWrapper:B,ChannelNavigationLogo:_,ChannelNavigationScrollViewLogo:F,ChannelNavigationLinksList:U,ChannelNavigationLinksWrapper:W,ChannelNavigationLinkItem:Z,ChannelNavigationLink:O,ChannelNavigationChannelDrawer:P,ChannelNavigationGlobalDrawer:H,ChannelNavigationGroupedNavigation:R,ChannelNavigationAccount:V,ChannelNavigationToggle:z,ChannelNavigationSecondaryMenu:j}},58376:(e,t,n)=>{const i=n(5917);t.Z=(0,i.defineMessages)({toggleLabel:{id:"ChannelNavigation.ToggleLabel",defaultMessage:"Open Navigation Menu",description:"ChannelNavigation component toggle label"},channelDrawerContentLabel:{id:"ChannelNavigation.ChannelDrawerContentLabel",defaultMessage:"Runway filters navigation",description:"ChannelNavigation component channel drawer content label"},globalDrawerContentLabel:{id:"ChannelNavigation.GlobalDrawerContentLabel",defaultMessage:"Navigation Menu",description:"ChannelNavigation component global drawer content label"},bookmarkAlertLabel:{id:"ChannelNavigation.BookmarkAlertLabel",defaultMessage:"Image saved. View saved images in ",description:"Bookmark alert label before the link"},bookmarkAlertMyAccountLabel:{id:"ChannelNavigation.BookmarkAlertMyAccountLabel",defaultMessage:"My Account.",description:"My account view saved images link text"}})},20578:(e,t,n)=>{const i=n(67294),a=n(45697),o=n(94184),r=({fillColor:e="#000",width:t="100px",height:n="100px",margin:a="20px",className:r="",...l})=>i.createElement("svg",{style:{width:t,height:n,margin:a,display:"inline-block"},className:o(r,"icon icon-loader"),...l,version:"1.1",id:"L9",xmlns:"http://www.w3.org/2000/svg",x:"0px",y:"0px",viewBox:"0 0 100 100",enableBackground:"new 0 0 0 0"},i.createElement("path",{fill:e,d:"M73,50c0-12.7-10.3-23-23-23S27,37.3,27,50 M30.9,50c0-10.5,8.5-19.1,19.1-19.1S69.1,39.5,69.1,50"},i.createElement("animateTransform",{attributeName:"transform",attributeType:"XML",type:"rotate",dur:"1s",from:"0 50 50",to:"360 50 50",repeatCount:"indefinite"})));r.propTypes={className:a.string,fillColor:a.string,height:a.string,margin:a.string,width:a.string},e.exports=r},82222:(e,t,n)=>{const i=n(67294),a=n(45697),o=n(94184),r=({backgroundColor:e="#000",borderColor:t="#000",height:n="40",margin:a="0",progressColor:r="#E6E6E6",trackColor:l="#000",width:s="40",className:d="",...c})=>i.createElement("svg",{className:o(d,"icon icon-loader"),style:{width:s,height:n,margin:a},viewBox:"0 0 40 40",fill:"none",xmlns:"http://www.w3.org/2000/svg",tabIndex:0,...c},i.createElement("g",{opacity:"0.9"},i.createElement("path",{className:"icon-loader-fill",d:"M0.5 8C0.5 3.85786 3.85786 0.5 8 0.5H32C36.1421 0.5 39.5 3.85786 39.5 8V32C39.5 36.1421 36.1421 39.5 32 39.5H8C3.85786 39.5 0.5 36.1421 0.5 32V8Z",fill:e}),i.createElement("path",{className:"icon-loader-stroke",d:"M0.5 8C0.5 3.85786 3.85786 0.5 8 0.5H32C36.1421 0.5 39.5 3.85786 39.5 8V32C39.5 36.1421 36.1421 39.5 32 39.5H8C3.85786 39.5 0.5 36.1421 0.5 32V8Z",stroke:t}),i.createElement("path",{className:"icon-loader-progress",fillRule:"evenodd",clipRule:"evenodd",d:"M20 28C24.4183 28 28 24.4183 28 20C28 15.5817 24.4183 12 20 12C15.5817 12 12 15.5817 12 20C12 24.4183 15.5817 28 20 28ZM20 29C24.9706 29 29 24.9706 29 20C29 15.0294 24.9706 11 20 11C15.0294 11 11 15.0294 11 20C11 24.9706 15.0294 29 20 29Z",fill:r},i.createElement("animateTransform",{attributeType:"XML",attributeName:"transform",type:"rotate",from:"0 20 20",to:"360 20 20",dur:"1s",repeatCount:"indefinite"})),i.createElement("path",{className:"icon-loader-track",d:"M20 29C15.0737 29 11 24.9263 11 20H11.9474C11.9474 24.4526 15.5474 28.0526 20 28.0526C24.4526 28.0526 28.0526 24.4526 28.0526 20C28.0526 15.5474 24.4526 11.9474 20 11.9474V11C24.9263 11 29 15.0737 29 20C29 24.9263 24.9263 29 20 29Z",fill:l},i.createElement("animateTransform",{attributeType:"XML",attributeName:"transform",type:"rotate",from:"0 20 20",to:"360 20 20",dur:"1s",repeatCount:"indefinite"}))));r.propTypes={backgroundColor:a.string,borderColor:a.string,className:a.string,height:a.string,margin:a.string,progressColor:a.string,trackColor:a.string,width:a.string},e.exports=r},20684:(e,t,n)=>{const i=n(67294),{VogueWrapper:a}=n(36832);e.exports=()=>i.createElement(a,{xmlns:"http://www.w3.org/2000/svg",viewBox:"0 0 32 36",textRendering:"geometricPrecision",shapeRendering:"geometricPrecision",className:"loader-vogue"},i.createElement("path",{id:"E",className:"st0",d:"M23.2612,0L23.2612,11.7649C23.2612,11.8148,23.0279,11.8315,23.0279,11.7649C23.0279,11.6982,23.2612,0.333282,12.7129,0.333282L8.76346,0.333282C8.54683,0.333282,8.41352,0.36661,8.41352,0.549915L8.41352,15.231C8.41352,15.3643,8.54683,15.4476,8.76346,15.4476L10.0799,15.4476C16.3456,15.4476,15.8457,9.14859,15.8457,9.08193C15.8457,9.01528,16.0957,9.03194,16.0957,9.08193C16.0957,9.13193,16.1123,22.2966,16.1123,22.3466C16.1123,22.3966,15.929,22.4132,15.929,22.3466C15.929,22.2799,15.779,15.7809,9.94661,15.7809L8.76346,15.7809C8.56349,15.7809,8.41352,15.8476,8.41352,15.9975L8.41352,31.7951C8.41352,31.9118,8.54683,32.0117,8.76346,32.0117C9.64666,32.0117,11.9296,32.0284,12.5629,32.0284C23.8945,32.0617,23.7445,19.8969,23.7445,19.8469C23.7445,19.797,24.0278,19.797,24.0278,19.8469L24.0278,32.445L0.114794,32.445C0.0481373,32.445,0.0481373,32.0951,0.114794,32.0951L2.49776,32.0951C2.71439,32.0951,2.84771,32.0284,2.84771,31.8784C2.84771,29.1455,2.84771,0.799877,2.84771,0.549915C2.84771,0.349946,2.58108,0.333282,2.49776,0.333282C2.46443,0.333282,1.23129,0.333282,0.0148091,0.333282C0.0148091,0.333282,-0.0685114,0.166641,0.0148091,0C0.0981296,0,23.2612,0,23.2612,0",opacity:"0",transform:"translate(4.15223,1.87884)",style:{animation:"E_o 1.5s linear infinite both"}}),i.createElement("path",{id:"U",className:"st0",d:"M27.1719,0.266719C25.7716,0.266719,24.3713,0.266719,24.3713,0.266719C24.3713,0.266719,24.0214,0.266719,24.0214,0.466748C24.0214,2.70041,24.0214,21.5031,24.0214,24.1868L24.0214,24.2034C24.038,30.8378,18.9372,33.0048,15.2701,33.0548L15.2701,33.0381C10.9528,33.0548,3.20169,32.338,3.20169,22.77C3.20169,22.77,3.18502,1.00016,3.16835,0.700115C3.15167,0.233381,2.55159,0.250051,2.55159,0.250051C2.55159,0.250051,0.10124,0.250051,0.017895,0.250051C-0.0654503,0.250051,-0.0487813,-0.1,0.017895,-0.1L11.9529,-0.1C12.0196,-0.1,12.003,0.250051,11.9529,0.250051C11.9029,0.250051,9.41925,0.250051,9.41925,0.250051C9.41925,0.250051,8.6358,0.216712,8.6358,0.733453C8.6358,1.46689,8.65246,25.0203,8.65246,25.8537C8.65246,29.5209,10.7361,32.7714,15.2534,32.7048C18.7873,32.638,23.6879,30.5711,23.6714,24.1868C23.6714,23.8701,23.6714,2.83376,23.6714,0.466748C23.6546,0.283389,23.3046,0.266719,23.3046,0.266719L19.9875,0.266719C19.9207,0.266719,19.9207,-0.0666619,20.004,-0.0666619C20.0208,-0.0666619,27.0885,-0.0666619,27.1719,-0.0666619C27.2385,0.100029,27.1719,0.266719,27.1719,0.266719Z",opacity:"0",transform:"translate(2.57354,1.9455)",style:{animation:"U_o 1.5s linear infinite both"}}),i.createElement("path",{id:"G",className:"st0",d:"M16.5382,19.9408L19.2012,19.9408C19.2012,19.9408,19.7005,19.8909,19.7005,20.124C19.7005,20.1406,19.7005,27.7636,19.7005,27.7636C19.7005,33.6389,13.8419,33.7056,12.1941,33.5224C6.06906,32.8233,5.95255,20.1905,5.91927,16.8784C5.83605,7.85727,7.2508,0.00125154,13.4091,0.317489C20.7159,0.683659,22.63,11.1694,22.7465,11.6355C22.9962,11.7187,22.9962,11.519,22.9962,11.519L23.0127,0.0844721C23.0127,0.0844721,22.9628,-0.0153926,22.813,0.11776C22.7631,0.167692,22.6965,0.23427,22.63,0.300845C19.401,3.59637,17.7866,0.134404,13.0762,-0.0153926C7.28409,-0.198477,0.0938322,7.82398,-0.00603238,17.0947C-0.105897,26.4154,6.01913,33.6056,12.7101,33.8554C16.3385,33.9885,16.2553,32.9898,20.7324,31.5917C23.4621,30.743,24.7604,32.5904,24.8602,33.356C25.0267,33.4725,25.0434,33.2727,25.0434,33.2727L25.0434,20.1739C25.0434,19.9077,25.4094,19.9576,25.4094,19.9576L27.8729,19.9576C27.9394,19.9576,27.9394,19.5914,27.8729,19.5914L16.5216,19.5914C16.4383,19.5914,16.4383,19.9408,16.5382,19.9408",opacity:"0",transform:"translate(2.19725,0.935133)",style:{animation:"G_o 1.5s linear infinite both"}}),i.createElement("path",{id:"O",className:"st0",d:"M5.92208,16.6329C5.92208,7.61677,7.65213,0.247436,14.0399,0.264071C20.9103,0.264071,22.2578,7.93283,22.2578,16.6496C22.2578,25.6659,20.9435,33.4346,14.09,33.4346C6.73721,33.4177,5.92208,26.115,5.92208,16.6329M13.9735,33.6839C20.7938,33.7005,28.1633,26.1649,28.18,16.8159C28.1965,7.01792,21.1101,0.0478142,14.09,-0.00209099C6.90356,-0.0686311,0,7.83302,0,16.8159C0,26.0983,6.52095,33.6507,13.9735,33.6839",opacity:"0",transform:"translate(2.065,1.05937)",style:{animation:"O_o 1.5s linear infinite both"}}),i.createElement("path",{id:"V",className:"st0",d:"M0.0178861,0L11.7176,0C11.7843,0,11.7676,0.349993,11.7176,0.349993L9.31769,0.349993C9.31769,0.349993,8.63437,0.31666,8.85104,0.699985C8.88437,0.783317,17.1175,23.2828,17.1175,23.2828C17.1175,23.2828,17.2675,23.6662,17.3842,23.7162C17.3842,23.7162,24.7007,1.11664,24.7007,1.09998C24.7674,0.883315,25.034,0.366659,24.584,0.366659L21.9341,0.366659C21.8841,0.366659,21.8841,0.0166663,21.9341,0.0166663L28.234,0.0166663C28.284,0.0166663,28.284,0.366659,28.234,0.366659L25.884,0.366659C25.234,0.349993,25.234,0.549989,25.1174,0.883315C25.0674,1.04998,14.9342,32.616,14.9342,32.616C14.9342,32.616,14.8842,32.4827,14.8509,32.3493C10.5677,19.9663,3.93447,2.73328,3.40115,0.883315C3.25115,0.333326,3.16782,0.349993,2.83449,0.349993C2.71783,0.349993,0.101218,0.349993,0.0178861,0.349993C-0.0654455,0.349993,-0.0487792,0,0.0178861,0",opacity:"0",transform:"translate(2.03854,1.8455)",style:{animation:"V_o 1.5s linear infinite both"}}))},26895:(e,t,n)=>{const i=n(20578),a=n(82222),o=n(20684);e.exports={Circle:i,CircleWithBackground:a,Vogue:o}},36832:(e,t,n)=>{const i=n(71893).default.svg.withConfig({displayName:"VogueWrapper"})`
  animation: rotate 2s linear infinite;
  width: 36px;
  height: 32px;

  & .path {
    stroke: #5652bf;
    stroke-linecap: round;
    animation: dash 1.5s ease-in-out infinite;
  }

  @keyframes E_o {
    0% {
      opacity: 0;
    }

    80.5556% {
      animation-timing-function: cubic-bezier(0, 0, 0.58, 1);
      opacity: 0;
    }

    83.3333% {
      opacity: 1;
    }

    97.2222% {
      animation-timing-function: cubic-bezier(0.42, 0, 1, 1);
      opacity: 1;
    }

    100% {
      opacity: 0;
    }
  }
  @keyframes U_o {
    0% {
      opacity: 0;
    }

    63.8889% {
      animation-timing-function: cubic-bezier(0, 0, 0.58, 1);
      opacity: 0;
    }

    66.6667% {
      opacity: 1;
    }

    80.5556% {
      animation-timing-function: cubic-bezier(0.42, 0, 1, 1);
      opacity: 1;
    }

    83.3333% {
      opacity: 0;
    }

    100% {
      opacity: 0;
    }
  }
  @keyframes G_o {
    0% {
      opacity: 0;
    }

    47.2222% {
      animation-timing-function: cubic-bezier(0, 0, 0.58, 1);
      opacity: 0;
    }

    50% {
      opacity: 1;
    }

    63.8889% {
      animation-timing-function: cubic-bezier(0.42, 0, 1, 1);
      opacity: 1;
    }

    66.6667% {
      opacity: 0;
    }

    100% {
      opacity: 0;
    }
  }
  @keyframes O_o {
    0% {
      opacity: 0;
    }

    30.5556% {
      animation-timing-function: cubic-bezier(0, 0, 0.58, 1);
      opacity: 0;
    }

    33.3333% {
      opacity: 1;
    }

    47.2222% {
      animation-timing-function: cubic-bezier(0.42, 0, 1, 1);
      opacity: 1;
    }

    50% {
      opacity: 0;
    }

    100% {
      opacity: 0;
    }
  }
  @keyframes V_o {
    0% {
      opacity: 0;
    }

    13.8889% {
      animation-timing-function: cubic-bezier(0, 0, 0.58, 1);
      opacity: 0;
    }

    16.6667% {
      animation-timing-function: cubic-bezier(0, 0, 0.58, 1);
      opacity: 1;
    }

    30.5556% {
      animation-timing-function: cubic-bezier(0.42, 0, 1, 1);
      opacity: 1;
    }

    33.3333% {
      opacity: 0;
    }

    100% {
      opacity: 0;
    }
  }
`;e.exports={VogueWrapper:i}},31383:(e,t,n)=>{const i=n(45697),a=n(94184),o=n(67294),r=n(98288),{trackComponent:l}=n(40199),{UtilityLedeHeader:s,UtilityLedeWrapper:d,UtilityLedeHedText:c,UtilityLedeDekText:g,UtilityLedeImage:p}=n(44397),h=({ariaLive:e,className:t,dangerousDek:n,dangerousHed:i,image:r,shouldUseAlternativeStyle:h,hasAlternateNewsletterStyle:m,hasInverted:u,variations:y,variationName:v})=>{o.useEffect((()=>{l("UtilityLede",v)}),[v]);const f=r&&Object.keys(r).length>0;return o.createElement(s,{className:a("utility-lede",t),"aria-live":e,"aria-label":"UtilityPageHeader",contentAlign:y.contentAlign,hasBackground:y.hasBackground,hasImage:f,alternativeStyle:h},r&&o.createElement(p,{hasImage:f,...r}),o.createElement(d,{alternativeStyle:h},o.createElement(c,{"data-testid":"UtilityLedeHedText",hasImage:f,dangerouslySetInnerHTML:{__html:i},hasInverted:u,hasAlternateNewsletterStyle:m}),n&&o.createElement(g,{"data-testid":"UtilityLedeDekText",hasImage:f,dangerouslySetInnerHTML:{__html:n},hasAlternateNewsletterStyle:m})))};h.propTypes={ariaLive:i.string,className:i.string,dangerousDek:i.string,dangerousHed:i.string.isRequired,hasAlternateNewsletterStyle:i.bool,hasInverted:i.bool,image:i.shape(r.propTypes),shouldUseAlternativeStyle:i.bool,variationName:i.string,variations:i.shape({contentAlign:i.oneOf(["center","left","right"]),hasBackground:i.bool})},h.defaultProps={shouldUseAlternativeStyle:!1,variations:{contentAlign:"center",hasBackground:!0}},e.exports=h},62702:(e,t,n)=>{e.exports=n(83375)},44397:(e,t,n)=>{const{default:i,css:a}=n(71893),{calculateSpacing:o,getColorStyles:r,getTypographyStyles:l}=n(79720),{BaseText:s}=n(74327),{BREAKPOINTS:d}=n(85326),c=n(98288),g=i.header.withConfig({displayName:"UtilityLedeHeader"})`
  ${({contentAlign:e})=>e?(e=>`\n  text-align: ${e};\n`)(e):""}
  ${({theme:e,hasBackground:t})=>t?(e=>`\n  ${r(e,"background-color","colors.discovery.body.white.background")};\n`)(e):""}
  ${({hasImage:e})=>e?`\n      display: grid;\n      grid-template-columns: repeat(8, 1fr);\n      grid-column-gap: 1.5rem;\n      align-items: center;\n      padding: ${o(12)} 0 ${o(100)} 0;\n      @media  (min-width: 0) and (max-width: ${d.md}){\n          grid-gap: ${o(2)};\n          grid-template-columns: repeat(4, 1fr);\n          padding: ${o(5)} 0 ${o(5)} 0;\n          justify-items: center;\n      }\n      `:""}
  ${({alternativeStyle:e})=>e?`\n    grid-gap: ${o(2)} 0;\n    @media (min-width: 0) and (max-width: ${d.md}){\n      grid-gap: ${o(4)} 0;\n    }\n    `:""}
`,p=i.div.withConfig({displayName:"UtilityLedeWrapper"})`
  grid-auto-flow: row;
  grid-column: 4 / span 5;

  @media (min-width: 0) and (max-width: ${d.md}) {
    grid-gap: ${o(2)} 0;
    grid-column: 1 / span 4;
  }

  ${e=>!0===e.alternativeStyle?`\n        grid-gap: ${o(2)} 0;\n        @media (min-width: 0) and (max-width: ${d.md}){\n            grid-gap: ${o(4)} 0;\n        }\n        `:""}
`,h=i(s).withConfig({displayName:"UtilityLedeHedText"})`
  ${({hasAlternateNewsletterStyle:e})=>e&&a`
      ${({theme:e})=>l(e,"typography.definitions.utility.heading")};
    `}
  ${e=>!0===e.alternativeStyle?`\n        ${({theme:e})=>r(e,"color","colors.discovery.lead.primary.hed")};\n        ${({theme:e})=>l(e,"typography.definitions.discovery.page-hed-section")};\n        `:""}
  ${e=>!0===e.hasImage?"\n        margin: 0;\n        ":`margin: 0 0 ${o(2,"px")};`}

  ${e=>!0===e.hasInverted&&a`
      ${({theme:e})=>r(e,"color","colors.discovery.body.white.context-texture")};
      ${({theme:e})=>l(e,"typography.definitions.discovery.hed-core-primary")};
      line-height: 25px;
      font-size: 20px;
    `}
`;h.defaultProps={as:"h1",colorToken:"colors.discovery.body.white.heading",typeIdentity:"typography.definitions.discovery.hed-break-out"};const m=i(s).withConfig({displayName:"UtilityLedeDekText"})`
  a {
    ${({theme:e})=>r(e,"color","colors.discovery.body.white.accent")};
    ${e=>!0===e.hasAlternateNewsletterStyle?a`
            ${r("color","colors.foundation.expanded-utility.nav-link.default")};
            text-decoration: none;
          `:""}
  }

  p {
    margin: 0; /* overwrite native browser margins for paragraph tags */
  }
  ${e=>!0===e.alternativeStyle?`\n        ${({theme:e})=>r(e,"color","colors.discovery.lead.primary.description")};\n        ${({theme:e})=>l(e,"typography.definitions.discovery.description.feature")};\n        a {\n          ${({theme:e})=>r(e,"color","colors.discovery.lead.primary.description")};\n        }\n        `:""}

  ${e=>!0===e.hasImage?"\n        margin: 0;\n        ":`margin: ${o(2,"px")} 0 0;`}

  @media (min-width: 0) and (max-width: ${d.md}) {
    grid-row: 2;
  }

  ${e=>!0===e.hasAlternateNewsletterStyle?a`
          ${l("typography.definitions.utility.description")}
        `:""}
`;m.defaultProps={as:"h2",colorToken:"colors.discovery.body.white.description",typeIdentity:"typography.definitions.consumptionEditorial.body-core"};const u=i(c).withConfig({displayName:"UtilityLedeImage"})`
  grid-column: 1 / span 3;
  @media (min-width: 0) and (max-width: ${d.md}) {
    grid-column: 2 / span 2;
    grid-row: 1;
  }
  ${e=>!0===e.hasImage?`\n      @media (min-width: 0) and (max-width: ${d.md}){\n        padding-bottom: 0;\n      }\n      `:""}
`;e.exports={UtilityLedeHeader:g,UtilityLedeWrapper:p,UtilityLedeHedText:h,UtilityLedeDekText:m,UtilityLedeImage:u}},83375:(e,t,n)=>{const{asVariation:i}=n(95545),a=n(31383);a.ContentCenterNoBackground=i(a,"ContentCenterNoBackground",{contentAlign:"center",hasBackground:!1}),a.ContentRightNoBackground=i(a,"ContentRightNoBackground",{contentAlign:"right",hasBackground:!1}),a.ContentLeftNoBackground=i(a,"ContentLeftNoBackground",{contentAlign:"left",hasBackground:!1}),e.exports=a},90949:(e,t,n)=>{const{fetchWithTimeout:i}=n(84317),{loadData:a}=n(59998);e.exports={fetchWithTimeout:i,loadData:a}},59998:e=>{e.exports={loadData:async function({url:e,gtmEvent:t=null}){window.dataLayer&&t&&window.dataLayer.push({event:t});const n=await fetch(e);if(n.ok)return n.json();throw new Error(n.statusText)}}},46775:(e,t,n)=>{const i=n(45697),a=n(67294),{AtoZIndexWrapper:o,AtoZIndexList:r,AtoZIndexLink:l,AtoZIndexText:s}=n(97168),d=["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","#"],c=({links:e,linksRef:t,navId:n})=>{if(!e||!e.length)return null;const i=e=>{e.preventDefault();const n=window.requestAnimationFrame||(e=>window.setTimeout(e,20)),i=document.getElementById(e.target.hash.replace("#",""));if(!i)return;const{offsetTop:a}=i,{offsetTop:o,scrollTop:r}=t.current,l=a-o-r;let s=0;const d=()=>{s+=20;const e=function(e,t,n,i){let a=e;return a/=300,a<1?n/2*a*a+t:(a--,-n/2*(a*(a-2)-1)+t)}(s,r,l);t.current.scrollTop=e,s<600&&n(d)};d()};return a.createElement(o,{"data-testid":"AtoZIndexWrapper"},a.createElement(r,null,d.map((t=>{const o=e.find((e=>e.groupName===t));return o?a.createElement("li",{key:t},a.createElement(l,{"data-testid":"AtoZIndexLink",href:"#"+("#"===o.groupName?`other-${n}`:`${o.groupName.toLowerCase()}-${n}`),onClick:i},t)):a.createElement(s,{key:t},t)}))))};c.propTypes={links:i.arrayOf(i.shape({groupName:i.string.isRequired})),linksRef:i.object,navId:i.string},e.exports=c},86422:(e,t,n)=>{const i=n(45697),a=n(67294),{useIntl:o}=n(5917),{useState:r}=n(67294),l=n(73955),s=n(48349),d=n(83066),{asConfiguredComponent:c}=n(36380),{filter:g,useDebounce:p}=n(5392),h=n(46775),{trackComponent:m}=n(40199),{GroupedNavigationWrapper:u,GroupedNavigationFilter:y,GroupedNavigationFilterContent:v,GroupedNavigationFilterInput:f,GroupedNavigationContent:C,GroupedNavigationLinks:b,GroupedNavigationGroup:k,GroupedNavigationIndex:w}=n(97168),N=n(97349).Z,$=({className:e,groupedLinks:t,showContentDivider:n=!0,hasAtoZIndex:i=!1,hasFilter:c=!1,hasSpacing:$=!1,analyticsEventForFilter:x,filterLabel:L})=>{a.useEffect((()=>{m("GroupedNavigation")}),[]);const{formatMessage:E}=o(),A=a.useRef(null),I=l(),[S,T]=r(""),[D,M]=p(t,200);return t&&t.length?a.createElement(u,{className:e,hasFilter:c,"data-testid":"GroupedNavigationWrapper"},c&&a.createElement(y,null,a.createElement(v,null,a.createElement(f,{placeholder:L,"aria-label":L||E(N.filterInputAriaLabelText),name:"filter",type:"text",onChange:e=>{const n=e.target.value;T(n),M((()=>g(t,n)))},onFocus:()=>{x&&s.emitGoogleTrackingEvent(x)},value:S}),a.createElement(d,null))),a.createElement(C,{hasFilter:c,hasSpacing:$},a.createElement(b,{ref:A},D.map((e=>{if(!e.links)return null;const t=e.links.map((e=>{const t=!0===e.isSecondary?"link--secondary":"link--primary";return{...e,className:t}})),o={};return i&&(o.id="#"===e.groupName?`other-${I}`:`${e.groupName.toLowerCase()}-${I}`),a.createElement(k,{key:e.groupName,className:"grouped-navigation__group",links:t,linkClassName:"grouped-navigation__link",heading:e.groupName,showContentDivider:n,shouldStyleListItems:!0,attributes:o})}))),i&&a.createElement(w,{className:"grouped-navigation__index"},a.createElement(h,{links:t,linksRef:A,navId:I})))):null},x=i.shape({text:i.string.isRequired,url:i.string.isRequired,isSecondary:i.bool,analyticsEvent:i.string}),L=i.arrayOf(i.shape({links:i.arrayOf(x),groupName:i.string,groupId:i.string}));$.propTypes={analyticsEventForFilter:i.string,className:i.string,filterLabel:i.string,groupedLinks:L,hasAtoZIndex:i.bool,hasFilter:i.bool,hasSpacing:i.bool,showContentDivider:i.bool},$.displayName="GroupedNavigation",e.exports=c($,"GroupedNavigation"),e.exports.groupedLinksShape=L},69379:(e,t,n)=>{e.exports=n(86422)},97168:(e,t,n)=>{const i=n(71893).default,{BaseLink:a,BaseText:o}=n(74327),{calculateSpacing:r,getLinkStyles:l,getTypographyStyles:s,getColorStyles:d,getInputFieldStyles:c}=n(79720),g=n(55399),p=i.div.withConfig({displayName:"GroupedNavigationWrapper"})`
  padding-top: ${r(4)};
  height: 100%;

  ${({hasFilter:e})=>e&&`padding-top: ${r(2)};`}

  .navigation__heading {
    ${({theme:e})=>s(e,"typography.definitions.foundation.title-primary")};
    margin: 0;
    line-height: normal;
    ${({theme:e})=>d(e,"color","colors.foundation.expanded-utility.nav-link.default")};
  }

  .navigation__list-item {
    white-space: normal;
  }

  .content-divider {
    display: block;
    margin-bottom: ${r(2)};
    border-bottom-width: ${r(.5)};
    border-bottom-style: solid;
    ${({theme:e})=>d(e,"border-bottom-color","colors.discovery.lead.secondary.accent")};
    padding-top: ${r(1)};
    width: ${r(2)};
  }

  .grouped-navigation__link {
    ${({theme:e})=>l(e,"colors.foundation.expanded-utility.nav-link.default","colors.foundation.expanded-utility.nav-link.hover","navigation")}

    &.link--primary {
      ${({theme:e})=>s(e,"typography.definitions.foundation.link-primary")};
    }

    &.link--secondary {
      ${({theme:e})=>s(e,"typography.definitions.foundation.link-secondary")};
    }
  }
`,h=i.div.withConfig({displayName:"GroupedNavigationFilter"})`
  position: static;
  border-width: 0 0 1px;
  border-style: solid;
  ${({theme:e})=>d(e,"color","colors.discovery.body.white.divider")};
  width: calc(100% - 1.25rem);
  height: 60px;

  .icon {
    position: absolute;
    top: 10px;
    right: 0;
    pointer-events: none;
  }
`,m=i.div.withConfig({displayName:"GroupedNavigationFilterContent"})`
  position: relative;
`,u=i(o).withConfig({displayName:"GroupedNavigationFilterInput"})`
  ${({theme:e})=>c(e,"normal","background")};
  ${({theme:e})=>c(e,"normal","text")};
  border: none;
  width: 100%;
  height: ${r(6.2)};
`;u.defaultProps={as:"input",typeIdentity:"typography.definitions.foundation.link-secondary"};const y=i.div.withConfig({displayName:"GroupedNavigationContent"})`
  display: flex;
  height: 100%
    ${({hasSpacing:e})=>e&&`\n       margin-top: ${r(1.5)};\n    `};
  ${({hasFilter:e})=>e&&`\n      padding-top: ${r(4)};\n      height: calc(100% - 60px);\n  `};
`,v=i.div.withConfig({displayName:"GroupedNavigationLinks"})`
  flex: 1;
  height: 100%;
  overflow-y: auto;
  max-height: 100vh;

  && li {
    padding-bottom: ${r(2)};

    &.link--primary {
      ${({theme:e})=>s(e,"typography.definitions.foundation.link-primary")};
    }

    &.link--secondary {
      ${({theme:e})=>s(e,"typography.definitions.foundation.link-secondary")};
    }
  }
`,f=i(g.Vertical).withConfig({displayName:"GroupedNavigationGroup"})`
  padding-bottom: ${r(5)};
`,C=i.div.withConfig({displayName:"GroupedNavigationIndex"})`
  position: static;
  padding-right: ${r(1)};
  overflow-y: auto;
`,b=i(o).withConfig({displayName:"AtoZIndexWrapper"})`
  width: ${r(3)};
  text-align: center;
`;b.defaultProps={as:"nav"};const k=i(o).withConfig({displayName:"AtoZIndexList"})`
  margin-top: 0;
  padding: 0;
  list-style: none;
`;k.defaultProps={as:"ul"};const w=i(a).withConfig({displayName:"AtoZIndexLink"})`
  display: block;
  background: none;
  padding-top: ${r(.25)};
  padding-bottom: ${r(.25)};
  width: 100%;
`;w.defaultProps={colorSecondaryLinkToken:"colors.foundation.expanded-utility.nav-link.hover",colorStaticLinkToken:"colors.foundation.expanded-utility.nav-link.default",colorToken:"colors.foundation.expanded-utility.nav-link.default",linkStyle:"navigation",typeToken:"typography.definitions.foundation.link-secondary"};const N=i(o).withConfig({displayName:"AtoZIndexText"})`
  margin: 0;
  padding-top: ${r(.25)};
  padding-bottom: ${r(.25)};
`;N.defaultProps={as:"li",colorToken:"colors.foundation.expanded-utility.nav-link.default",typeIdentity:"typography.definitions.foundation.link-secondary"},e.exports={GroupedNavigationWrapper:p,GroupedNavigationFilter:h,GroupedNavigationFilterContent:m,GroupedNavigationFilterInput:u,GroupedNavigationContent:y,GroupedNavigationLinks:v,GroupedNavigationGroup:f,GroupedNavigationIndex:C,AtoZIndexWrapper:b,AtoZIndexList:k,AtoZIndexLink:w,AtoZIndexText:N}},97349:(e,t,n)=>{const i=n(5917);t.Z=(0,i.defineMessages)({filterInputAriaLabelText:{id:"GroupedNavigation.FilterInputAriaLabel",defaultMessage:"Filter links",description:"Grouped Navigation Filter component aria label text",isConfigurable:!0}})},5392:(e,t,n)=>{Object.defineProperty(t,"__esModule",{value:!0}),t.useDebounce=t.filter=void 0;const{useState:i,useCallback:a}=n(67294),o=n(23279);t.filter=(e,t)=>{if(!t?.trim())return e;const n=e=>e.toString().toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g,"").replace(/[^a-z0-9\s]/gi,"");return e.map((e=>({...e,links:e.links?.filter((e=>/(\s|')/.test(t)?n(e.text).includes(n(t)):e.text.match(/([a-zA-Z]\.){2,}/)?e.text.split(" ").filter((e=>n(e).startsWith(n(t)))).length:e.text.split(/([ \-'’.]+)/).filter((e=>n(e).startsWith(n(t)))).length))}))).filter((e=>e.links?.length))},t.useDebounce=(e,t)=>{const[n,r]=i(e),l=a(o((e=>{r(e)}),t),[]);return[n,e=>{l(e)}]}}}]);