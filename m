Return-Path: <open-iscsi+bncBAABB4UHZ7XQKGQE6JHS6XI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1682F11E8D7
	for <lists+open-iscsi@lfdr.de>; Fri, 13 Dec 2019 18:01:40 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id x18sf78541ybr.15
        for <lists+open-iscsi@lfdr.de>; Fri, 13 Dec 2019 09:01:40 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1576256499; cv=pass;
        d=google.com; s=arc-20160816;
        b=aIxSUBL+yDQfqXv6F9b3ouWmsusE73YrjZa8X5anw8VB3aU/dxHe5TpEW78oVMkxju
         iP46fNFYHUD/rI0sexS1zm/raRhLeAkTI3D+tyDUUr+DClEsnBggH4axjb7h+0aIx1UV
         SKJgJXpU8X/GKo1jz4uiAcRn7xckY6/n2rJ11rD8J7HIq6lVeBxqT5u2T8mD6zEDccCq
         pE21aCJ0Ea04E9UuCWzS8OlhZbe+9bFCh9+r70o1Q4Y9x7XpgLEVB0BYxcaIgqSa7UEl
         MpJ5hgoKdNY6XssgcXxq3zJhseyxXGzNLqXkTvjT3ZpBtUwETuveoV18SczGHQcbgihO
         biSQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:to:from:dkim-signature;
        bh=Dd6dpUJzmdhjGbLt9GW7L7EHrVXc+lvb6R+YtQfyEmQ=;
        b=G9sbc2ZQIn84BWpcByrdqiu22nkRigeRh9KIcsuqksZ7lVTaI4zPkyJefIgDwy0xQl
         zSIGZMnkqNOQp9qska174+QwwayeRCwsv6H9tabKWEVtJfJIy6s1MdZlF3DjlEgLhAFF
         nWJUNRyYJaXwa0hGlZWBmYIjHqvYkyYLDoXyLPVt7lJr7u2qsiQ5LzWKrSz/RF4YQ6gg
         rxUSe2dj7Q7OW2jxqxqobrHi+xx36R3BrxxOevaR3H4wBuOsMXala267gdQT4fmV8E31
         v5UrptVQuBoVlLZRo808A0LyH7uSZ7CEYyp9IHi0VD/OFUubL49PDIx6bCClBnO63TAW
         WXiw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@bylight.com header.s=selector2 header.b=t1IggBkC;
       arc=pass (i=1 spf=pass spfdomain=bylight.com dkim=pass dkdomain=bylight.com dmarc=pass fromdomain=bylight.com);
       spf=pass (google.com: domain of karla.thurs@bylight.com designates 40.107.237.46 as permitted sender) smtp.mailfrom=karla.thurs@bylight.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=bylight.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Dd6dpUJzmdhjGbLt9GW7L7EHrVXc+lvb6R+YtQfyEmQ=;
        b=W8csWWmn7536buI+LJVPpez+aNib19IDK2gjNRsOZvJ6kHGoYII+S5YJGKgQd/ruU/
         U5XcRH0D8yGjJ2rBLL91Xf4TQNY1W2H07T45H+FWpYeAT4dJrUbknkg43h8olz3gKciH
         6ywTp4sksBOJv4gmuAPKAjDFXG90tXsI8bbVeCk6983M9YD+UuoyM2BY2h4v6Qn9z1DE
         eAdDiClBY+Ql9kPHkCv5ZtLekey3/5+SdOqiEg+VNDKLdNPv/WH+mg9PQICvsd2gsX/3
         uSnzrSSibbAZ4OCZuPF9NeyyVtD87Hom+rjB6yX9WaoxGTpx4xUS6P9WkHnSri2pd7kj
         43Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:thread-topic:thread-index:date
         :message-id:references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Dd6dpUJzmdhjGbLt9GW7L7EHrVXc+lvb6R+YtQfyEmQ=;
        b=XvwW+DncKDbKNOoDAXMdEeT7tQlAzcHjPkRFRwu/o6qK2adEL2noQm305ciGVHjzJy
         h5+mYAF6WS5tgtZOcQLZekOUB1UlZmycsh3SSwlPTJ9dU5MOTrD0xIMnuQM+lt1kxBxp
         PcfMDYKx6qiefHcDOyiCZNykW0oHki3cx03vZ80+1W1WYGfQZefHAU5UXolJ3Ymj2oNh
         CKEaWygBJp2fJS8j5YgLvQB6/sUcC/WeG0VtkfJwuTori7DXYzxxQmK67yyv/ESjDTPC
         jx1Q53kJZrRDqGjRvSfzZ7NvCV86S4N4AEhACE3dSfmhsAZCowC8aH9gcxq0B75/qjJw
         U84A==
X-Gm-Message-State: APjAAAXbV5h+FoyRnhB3/zT2NslGf2f7V4w2OIi2w6jxCPGMehJFaIgW
	gcGinlyDOTlNwhB3zL37eCM=
X-Google-Smtp-Source: APXvYqzZjszYIIR6QtcSrNjyY3uwwRaQGHsiNAgenPMe3e0amVb0Bl+rcURorPQG6iYAnPOsbujnUg==
X-Received: by 2002:a9d:74c4:: with SMTP id a4mr15979090otl.119.1576256498607;
        Fri, 13 Dec 2019 09:01:38 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:aaca:: with SMTP id t193ls1047458oie.15.gmail; Fri, 13
 Dec 2019 09:01:38 -0800 (PST)
X-Received: by 2002:aca:3285:: with SMTP id y127mr7338084oiy.67.1576256498426;
        Fri, 13 Dec 2019 09:01:38 -0800 (PST)
Received: by 2002:aca:5c57:0:0:0:0:0 with SMTP id q84msoib;
        Fri, 13 Dec 2019 07:58:42 -0800 (PST)
X-Received: by 2002:a9d:413:: with SMTP id 19mr15586220otc.11.1576252721879;
        Fri, 13 Dec 2019 07:58:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576252721; cv=pass;
        d=google.com; s=arc-20160816;
        b=EitfrLETKVTH6QBsieaT4PvutOFRJvp94CXR6MNFkr4KcDm1WmY8brqW7qiozcXCGc
         U60gLuW6BiwSc0qlAO/qPSLg4HAax5V3j/6wfJpx72q0TcJBjyE0vSJIixc2ddZcxWm9
         jJhl7ddH25WmogjIPhJYKBlRTNo6zHe8fT4SzCtKNYolOlm1LJknh1QGKblsvntTw+gK
         ICx4qxiux7SU0gTeSpMbvVPHcmLnZaOinPnVDNHKgnnWVWblqMNGRSrccVd7h9Oszei3
         nb2y/VwSP4nTL8qsf/rDFRBM5qqapdaECcM3Z2+Jqhp+5qF31qzAZ5Z4ZLw2XPDNqzz2
         CpqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:to
         :from:dkim-signature;
        bh=XBoQBlzH5Q1E8+bPTY2eC2KDA8ujZSwXWW1BNvpTuGI=;
        b=LwC5B0MW5cct/A5v2isUzXECHNy+7OVsJKMCs68xM46tp3kj3ALu6ETzGFF9LloPHx
         yeIKBfQBvKSh8QmiYOfTPc/00vkwLV8E/S0IqNRnJvgvls5VS/RjSeT1yiCTWS7qUMvn
         I+Ao6uUAxTEwrhv/W44m1GxglEFpJ6vNPFQ08RrKkQb3A7zP2Gqvrs3bLWooUxqjBKIz
         dEYyS43nbILqj18o+v5wThRNrHX+7DN4MXGSnY5phM+qZvrVF/asZWOSvd3Kd31fPtFA
         N6xr56hqqzQ4gay2Y1GjWTl//QRxKL4QU7ske7tMAUUjVp8iwIbDtr0VTXojohJzWfrs
         705Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@bylight.com header.s=selector2 header.b=t1IggBkC;
       arc=pass (i=1 spf=pass spfdomain=bylight.com dkim=pass dkdomain=bylight.com dmarc=pass fromdomain=bylight.com);
       spf=pass (google.com: domain of karla.thurs@bylight.com designates 40.107.237.46 as permitted sender) smtp.mailfrom=karla.thurs@bylight.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=bylight.com
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2046.outbound.protection.outlook.com. [40.107.237.46])
        by gmr-mx.google.com with ESMTPS id c24si425780oto.3.2019.12.13.07.58.41
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Dec 2019 07:58:41 -0800 (PST)
Received-SPF: pass (google.com: domain of karla.thurs@bylight.com designates 40.107.237.46 as permitted sender) client-ip=40.107.237.46;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ESszTf4GUHWAP248Yp1em2ADOAuZuGYNH5/yPJV18N/aIImEX6Yk51XJSAUC3Q20wrv0QgS5u88S/rOgFr2s3e+HKxm9Ub+MfDNp4GW7AMJ1sKo06xAUP6u0ftE5TZ+MDKIJBn/0HyRpHdU4BOKD1++fvFU+h2reF2HEo1XPYKU7N7fKUCn+5zfiZnn4rxkTde46ZXen2s1Yu26mVFNMYf57HW+Sbbri/GzzyfiBDPJwXcuvuMkZceTOob8kCz0H1bn0BhpER9ik9UJZGZY/I+bPAThkSl5Qmf3G5FLR43jBJthhgMPomIxteV8UN1FMyzGY5WaaWfCrYI/CQxmsZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XBoQBlzH5Q1E8+bPTY2eC2KDA8ujZSwXWW1BNvpTuGI=;
 b=HQxbRm1WRUw3rozRlK5ofsatTQ5LKeUXCJneGJ5cn78tB6tqMtjGh1QHWaK5mGhGyhyvm9SblirR4HdRQZA5reL91JYRtrnrwUftC2EzDjPT9WNIchDDqOIC7doi1R7qNz9ZcAq/x/Gmsu+9d8fLkN9ozy7sVhWq/Qi0DEypcmLqK9kuybQmDBPbOh5R3O0IFWw7DKvNhYbSLQADiMZV33Uph/Ev/sPvKUpYzBGPuyMeZNR9wJRG6uxOKKyvopZL9w9lQz07hdTJTuvesK4poM/Kz1X+t2gKmUQRLVFxVBc4FIiE9HLxHg7hzs5D+urVrn1s7ogp7cD01k3wmYePBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=bylight.com; dmarc=pass action=none header.from=bylight.com;
 dkim=pass header.d=bylight.com; arc=none
Received: from BYAPR13MB2374.namprd13.prod.outlook.com (52.135.222.148) by
 BYAPR13MB2903.namprd13.prod.outlook.com (20.178.206.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.9; Fri, 13 Dec 2019 15:58:39 +0000
Received: from BYAPR13MB2374.namprd13.prod.outlook.com
 ([fe80::89d3:2b60:f044:fa1d]) by BYAPR13MB2374.namprd13.prod.outlook.com
 ([fe80::89d3:2b60:f044:fa1d%7]) with mapi id 15.20.2538.012; Fri, 13 Dec 2019
 15:58:39 +0000
From: "'Karla Thurs' via open-iscsi" <open-iscsi@googlegroups.com>
To: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>
Subject: Openiscsi Release Schedule
Thread-Topic: Openiscsi Release Schedule
Thread-Index: AQHVsc4vD44qhIdK4UOwDL6mF0SS2Q==
Date: Fri, 13 Dec 2019 15:58:39 +0000
Message-ID: <BYAPR13MB2374C51F1BA4DE9C0C113B6AE3540@BYAPR13MB2374.namprd13.prod.outlook.com>
References: <ER6VKMQR6V@zendesk.com>
 <ER6VKMQR6V_5df3b2cf5ea09_7a813feae9cbcf142908be_sprut@zendesk.com>,<ER6VKMQR6V_5df3b41a73f5_71983f8d8dcbcf1427328e_sprut@zendesk.com>
In-Reply-To: <ER6VKMQR6V_5df3b41a73f5_71983f8d8dcbcf1427328e_sprut@zendesk.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.87.148.130]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c10f2e7-7175-4a9c-42c5-08d77fe55220
x-ms-traffictypediagnostic: BYAPR13MB2903:
x-microsoft-antispam-prvs: <BYAPR13MB2903738B2901E616F4FC3851E3540@BYAPR13MB2903.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0250B840C1
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(346002)(376002)(396003)(39850400004)(366004)(136003)(189003)(199004)(478600001)(2906002)(966005)(19627405001)(66476007)(76116006)(66556008)(64756008)(66946007)(186003)(91956017)(53546011)(3480700005)(7696005)(33656002)(6916009)(6506007)(9686003)(8676002)(26005)(316002)(86362001)(52536014)(66446008)(7116003)(44832011)(55016002)(81156014)(5660300002)(71200400001)(81166006)(8936002);DIR:OUT;SFP:1101;SCL:1;SRVR:BYAPR13MB2903;H:BYAPR13MB2374.namprd13.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: bylight.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zbo8hbo8Fs/tyqqvFLqpw/w3B47vZKhCfhpWyRPwKO/Vw1GlkdQn+Q2blfftlubxAWR8TtPxE6qrRrNUIN9nDZVWbl5LwvZOJfP+GCx6/FtrZr9pafJb+bBTOALSD3uuBocHPCRgGXT21adk0lF/PylukzMd2w++NX+6dbjIHmFegBeen02mJdT9MMUMEKf16KluIz9eN/vqWmXCrkzbvKrhvN04bEJLGuvKdP356jDoAsF8X8RwseXMl62uBVlV05GJNfpgYtQ1muNKdcxjWgM7DybVDIVlbQMBlDl7D5uSeEBCbZmgnSK+M8M5hipIWj9QeD1Mp8Wt+EsTZL+CKSB2Bm+cKDlcZg8ajy3JzmRQwHJWInPpNVbGPH+UTHlw17zBp7s/LAj+7dMyDmcf12GN5K3JwySnuAQbYHfWbAAntGwCATzluEOur0Xjl2bccnxNXJLyph+RU09PTxN3yQwy7vn2oM5QtIf6eQxctSM=
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
	boundary="_000_BYAPR13MB2374C51F1BA4DE9C0C113B6AE3540BYAPR13MB2374namp_"
MIME-Version: 1.0
X-OriginatorOrg: bylight.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c10f2e7-7175-4a9c-42c5-08d77fe55220
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2019 15:58:39.7099
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 90ae2b3f-f889-48de-a8d4-459d51216af8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f2omAu7xy+zIimy5ieRdBH0eFNJ404iUuiOyE0d+2Ols9aCDOq10/M8CwHoAouAhrGMrR5Py3WjnpwGrbjHtZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR13MB2903
X-Original-Sender: karla.thurs@bylight.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@bylight.com header.s=selector2 header.b=t1IggBkC;       arc=pass
 (i=1 spf=pass spfdomain=bylight.com dkim=pass dkdomain=bylight.com dmarc=pass
 fromdomain=bylight.com);       spf=pass (google.com: domain of
 karla.thurs@bylight.com designates 40.107.237.46 as permitted sender)
 smtp.mailfrom=karla.thurs@bylight.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=bylight.com
X-Original-From: Karla Thurs <karla.thurs@bylight.com>
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

--_000_BYAPR13MB2374C51F1BA4DE9C0C113B6AE3540BYAPR13MB2374namp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,
What is your latest version of Openiscsi and what was the release date? Do =
you happen to have a release schedule that you follow? I see your dates for=
 old releases but don't see anything about following a certain schedule for=
 new releases. If you have anything to provide that would be great.

Thank you,
Karla Thurs

Configuration Manager

By Light Professional IT Services LLC
karla.thurs@bylight.com

________________________________
From: GitHub Developer Support <developer@githubsupport.com>
Sent: Friday, December 13, 2019 9:54 AM
To: Karla Thurs <karla.thurs@bylight.com>
Subject: [GitHub Developer Support] - Openiscsi


[EXTERNAL EMAIL]

## Please do not write below this line ##

Your request has been updated.

You can add a comment by replying to this email.

[https://github.zendesk.com/system/photos/3602/0039/4251/steve_profile_pic.=
jpg]

Steve Graff (GitHub Developer Support)

Dec 13, 3:54 PM UTC

Hi Karla,

I'm sorry, but you've reached Support for GitHub. It sounds like you may ha=
ve been looking for support for a specific project that is hosted on GitHub=
.

https://github.com/open-iscsi/open-iscsi

We didn't build that project, so we're not able to support it. There are a =
few places we suggest you look when you need help with a project hosted on =
GitHub:

  *   its SUPPORT or README file, which may include contact information or =
an official website
  *   its Issues tab, where you can report bugs
  *   the owner's GitHub profile, which may include contact information

Of course, do let us know if you have any questions about GitHub itself!

Thanks,

Steve G.
GitHub Support

[https://secure.gravatar.com/avatar/731971275330e7dead702b5866fbd7b6?size=
=3D40&default=3Dhttps%3A%2F%2Fassets.zendesk.com%2Fimages%2F2016%2Fdefault-=
avatar-80.png&r=3Dg]

Karla Thurs

Dec 13, 3:48 PM UTC

Hello,
What is your latest version of Openiscsi and what was the release date? Do =
you happen to have a release schedule that you follow? I see your dates for=
 old releases but don't see anything about following a certain schedule for=
 new releases. If you have anything to provide that would be great.

This email is a service from GitHub Developer Support.
[ER6VKM-QR6V]

This communication (including any attachments) may contain information that=
 is proprietary, confidential or exempt from disclosure. If you are not the=
 intended recipient, please note that further dissemination, distribution, =
use or copying of this communication is strictly prohibited. Anyone who rec=
eived this message in error should notify the sender immediately by telepho=
ne or by return email and delete it from his or her computer.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/BYAPR13MB2374C51F1BA4DE9C0C113B6AE3540%40BYAPR13MB2374.namprd13.=
prod.outlook.com.

--_000_BYAPR13MB2374C51F1BA4DE9C0C113B6AE3540BYAPR13MB2374namp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div></div>
<div>
<div style=3D"color:rgb(0,0,0); font-family:Calibri,Arial,Helvetica,sans-se=
rif; font-size:12pt">
<span style=3D"display:inline!important; background-color:rgb(255,255,255);=
 color:rgb(43,46,47); font-family:&quot;Lucida Sans Unicode&quot;,&quot;Luc=
ida Grande&quot;,&quot;Tahoma&quot;,Verdana,sans-serif; font-size:14px; lin=
e-height:22px">Hello,</span><br style=3D"">
<span style=3D"display:inline!important; background-color:rgb(255,255,255);=
 color:rgb(43,46,47); font-family:&quot;Lucida Sans Unicode&quot;,&quot;Luc=
ida Grande&quot;,&quot;Tahoma&quot;,Verdana,sans-serif; font-size:14px; lin=
e-height:22px">What is your latest version of Openiscsi and what
 was the release date? Do you happen to have a release schedule that you fo=
llow? I see your dates for old releases but don't see anything about follow=
ing a certain schedule for new releases. If you have anything to provide th=
at would be great.</span></div>
<div style=3D"color:rgb(0,0,0); font-family:Calibri,Arial,Helvetica,sans-se=
rif; font-size:12pt">
<br>
</div>
<div style=3D"color:rgb(0,0,0); font-family:Calibri,Arial,Helvetica,sans-se=
rif; font-size:12pt">
<div style=3D"border-bottom-color: currentColor; border-left-color: current=
Color; border-right-color: currentColor; border-top-color: currentColor; fo=
nt-size-adjust: none; margin-bottom: 0px; margin-top: 0px">
<font face=3D"Times New Roman" size=3D"3"><span style=3D"border-bottom-colo=
r: currentColor; border-left-color: currentColor; border-right-color: curre=
ntColor; border-top-color: currentColor; font-family: Arial,Helvetica,sans-=
serif; font-size: 11pt; font-size-adjust: none; margin-bottom: 0px; margin-=
top: 0px">Thank
 you,</span></font></div>
<span style=3D"display: inline !important; background-color: rgb(255, 255, =
255); font-size-adjust: none"></span>
<div style=3D"border-bottom-color: currentColor; border-left-color: current=
Color; border-right-color: currentColor; border-top-color: currentColor; fo=
nt-size-adjust: none; margin-bottom: 0px; margin-top: 0px">
<font face=3D"Times New Roman" size=3D"3"><span style=3D"border-bottom-colo=
r: currentColor; border-left-color: currentColor; border-right-color: curre=
ntColor; border-top-color: currentColor; font-family: Arial,Helvetica,sans-=
serif; font-size: 11pt; font-size-adjust: none; margin-bottom: 0px; margin-=
top: 0px">Karla
 Thurs</span></font></div>
<span style=3D"display: inline !important; background-color: rgb(255, 255, =
255); font-size-adjust: none"></span>
<div style=3D"border-bottom-color: currentColor; border-left-color: current=
Color; border-right-color: currentColor; border-top-color: currentColor; fo=
nt-size-adjust: none; margin-bottom: 0px; margin-top: 0px">
<font><span style=3D"border-bottom-color: currentColor; border-left-color: =
currentColor; border-right-color: currentColor; border-top-color: currentCo=
lor; font-size-adjust: none; margin-bottom: 0px; margin-top: 0px"></span>
<p style=3D"background-color: rgb(255, 255, 255); color: rgb(0, 51, 102); f=
ont-family: &amp;quot; font-size: 12pt; margin-bottom: 0px; margin-top: 0px=
">
<span style=3D"border-bottom-color: currentColor; border-left-color: curren=
tColor; border-right-color: currentColor; border-top-color: currentColor; c=
olor: rgb(0, 0, 0); font-family: Arial,Helvetica,sans-serif; font-size: 11p=
t; font-size-adjust: none; margin-bottom: 0px; margin-top: 0px">Configurati=
on
 Manager</span><br>
</p>
<span style=3D"border-bottom-color: currentColor; border-left-color: curren=
tColor; border-right-color: currentColor; border-top-color: currentColor; f=
ont-size-adjust: none; margin-bottom: 0px; margin-top: 0px"></span>
<div style=3D"background-color: rgb(255, 255, 255); border-bottom-color: cu=
rrentColor; border-left-color: currentColor; border-right-color: currentCol=
or; border-top-color: currentColor; font-size-adjust: none; margin-bottom: =
0px; margin-top: 0px">
<span style=3D"border-bottom-color: currentColor; border-left-color: curren=
tColor; border-right-color: currentColor; border-top-color: currentColor; f=
ont-family: Arial,Helvetica,sans-serif; font-size: 11pt; font-size-adjust: =
none; margin-bottom: 0px; margin-top: 0px">By
 Light Professional IT Services LLC</span></div>
</font>
<div style=3D"background-color: rgb(255, 255, 255); border-bottom-color: cu=
rrentColor; border-left-color: currentColor; border-right-color: currentCol=
or; border-top-color: currentColor; font-size-adjust: none; margin-bottom: =
0px; margin-top: 0px">
<font><span style=3D"border-bottom-color: currentColor; border-left-color: =
currentColor; border-right-color: currentColor; border-top-color: currentCo=
lor; font-family: Arial,Helvetica,sans-serif; font-size: 11pt; font-size-ad=
just: none; margin-bottom: 0px; margin-top: 0px">karla.thurs@bylight.com</s=
pan></font><br>
</div>
</div>
</div>
<div style=3D"color:rgb(0,0,0); font-family:Calibri,Arial,Helvetica,sans-se=
rif; font-size:12pt">
</div>
<div style=3D"color:rgb(0,0,0); font-family:Calibri,Arial,Helvetica,sans-se=
rif; font-size:12pt">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"Calib=
ri, sans-serif" style=3D"font-size:11pt"><b>From:</b> GitHub Developer Supp=
ort &lt;developer@githubsupport.com&gt;<br>
<b>Sent:</b> Friday, December 13, 2019 9:54 AM<br>
<b>To:</b> Karla Thurs &lt;karla.thurs@bylight.com&gt;<br>
<b>Subject:</b> [GitHub Developer Support] - Openiscsi</font>
<div>&nbsp;</div>
</div>
<div>
<div>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><span style=3D"color:#CE1=
126">[EXTERNAL EMAIL]
</span></p>
</div>
<div>
<div style=3D"padding:10px; line-height:18px; font-family:'Lucida Grande',V=
erdana,Arial,sans-serif; font-size:12px; color:#444444">
<div style=3D"color:#b5b5b5">## Please do not write below this line ##</div=
>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Your request has been upd=
ated.</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">You can add a comment by =
replying to this email.</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"></p>
<div style=3D"margin-top:25px">
<table width=3D"100%" role=3D"presentation" border=3D"0" cellspacing=3D"0" =
cellpadding=3D"0">
<tbody>
<tr>
<td width=3D"100%" style=3D"border-collapse:collapse; padding:15px 0; borde=
r-top:1px dotted #c5c5c5">
<table width=3D"100%" role=3D"presentation" style=3D"table-layout:fixed" bo=
rder=3D"0" cellspacing=3D"0" cellpadding=3D"0">
<tbody>
<tr>
<td valign=3D"top" style=3D"border-collapse:collapse; padding:0 15px 0 15px=
; width:40px">
<img width=3D"40" height=3D"40" style=3D"height:auto; line-height:100%; out=
line:none; text-decoration:none; -webkit-border-radius:5px; -moz-border-rad=
ius:5px; border-radius:5px" alt=3D"" src=3D"https://github.zendesk.com/syst=
em/photos/3602/0039/4251/steve_profile_pic.jpg">
</td>
<td width=3D"100%" valign=3D"top" style=3D"border-collapse:collapse; paddin=
g:0; margin:0">
<p style=3D"margin-top: 0px; margin-bottom: 0px;font-family:'Lucida Grande'=
,'Lucida Sans Unicode','Lucida Sans',Verdana,Tahoma,sans-serif; font-size:1=
5px; line-height:18px; margin-bottom:0; margin-top:0; padding:0; color:#1b1=
d1e">
<strong>Steve Graff</strong> (GitHub Developer Support) </p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;font-family:'Lucida Grande'=
,'Lucida Sans Unicode','Lucida Sans',Verdana,Tahoma,sans-serif; font-size:1=
3px; line-height:25px; margin-bottom:15px; margin-top:0; padding:0; color:#=
bbbbbb">
Dec 13, 3:54 PM UTC </p>
<div class=3D"zd-comment" style=3D"color:#2b2e2f; font-family:'Lucida Sans =
Unicode','Lucida Grande','Tahoma',Verdana,sans-serif; font-size:14px; line-=
height:22px; margin:15px 0" dir=3D"auto">
<p style=3D"margin-top: 0px; margin-bottom: 0px;color:#2b2e2f; font-family:=
'Lucida Sans Unicode','Lucida Grande','Tahoma',Verdana,sans-serif; font-siz=
e:14px; line-height:22px; margin:15px 0" dir=3D"auto">
Hi Karla,</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;color:#2b2e2f; font-family:=
'Lucida Sans Unicode','Lucida Grande','Tahoma',Verdana,sans-serif; font-siz=
e:14px; line-height:22px; margin:15px 0" dir=3D"auto">
I'm sorry, but you've reached Support for GitHub. It sounds like you may ha=
ve been looking for support for a specific project that is
<em>hosted</em> on GitHub.</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;color:#2b2e2f; font-family:=
'Lucida Sans Unicode','Lucida Grande','Tahoma',Verdana,sans-serif; font-siz=
e:14px; line-height:22px; margin:15px 0" dir=3D"auto">
<a href=3D"https://github.com/open-iscsi/open-iscsi" rel=3D"noreferrer">htt=
ps://github.com/open-iscsi/open-iscsi</a></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;color:#2b2e2f; font-family:=
'Lucida Sans Unicode','Lucida Grande','Tahoma',Verdana,sans-serif; font-siz=
e:14px; line-height:22px; margin:15px 0" dir=3D"auto">
We didn't build that project, so we're not able to support it. There are a =
few places we suggest you look when you need help with a project hosted on =
GitHub:</p>
<ul type=3D"disc" style=3D"list-style-type:disc; margin:10px 0 15px 30px; p=
adding-left:15px" dir=3D"auto">
<li type=3D"disc" style=3D"font-family:'Lucida Sans Unicode','Lucida Grande=
','tahoma',Verdana,sans-serif; font-size:14px; line-height:22px; margin:10p=
x 0">
its SUPPORT or README file, which may include contact information or an off=
icial website</li><li type=3D"disc" style=3D"font-family:'Lucida Sans Unico=
de','Lucida Grande','tahoma',Verdana,sans-serif; font-size:14px; line-heigh=
t:22px; margin:10px 0">
its Issues tab, where you can report bugs</li><li type=3D"disc" style=3D"fo=
nt-family:'Lucida Sans Unicode','Lucida Grande','tahoma',Verdana,sans-serif=
; font-size:14px; line-height:22px; margin:10px 0">
the owner's GitHub profile, which may include contact information</li></ul>
<p style=3D"margin-top: 0px; margin-bottom: 0px;color:#2b2e2f; font-family:=
'Lucida Sans Unicode','Lucida Grande','Tahoma',Verdana,sans-serif; font-siz=
e:14px; line-height:22px; margin:15px 0" dir=3D"auto">
Of course, do let us know if you have any questions about GitHub itself!</p=
>
<p style=3D"margin-top: 0px; margin-bottom: 0px;color:#2b2e2f; font-family:=
'Lucida Sans Unicode','Lucida Grande','Tahoma',Verdana,sans-serif; font-siz=
e:14px; line-height:22px; margin:15px 0" dir=3D"auto">
Thanks,</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;color:#2b2e2f; font-family:=
'Lucida Sans Unicode','Lucida Grande','Tahoma',Verdana,sans-serif; font-siz=
e:14px; line-height:22px; margin:15px 0" dir=3D"auto">
Steve G.<br>
GitHub Support</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"></p>
</div>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"></p>
<table width=3D"100%" role=3D"presentation" border=3D"0" cellspacing=3D"0" =
cellpadding=3D"0">
<tbody>
<tr>
<td width=3D"100%" style=3D"border-collapse:collapse; padding:15px 0; borde=
r-top:1px dotted #c5c5c5">
<table width=3D"100%" role=3D"presentation" style=3D"table-layout:fixed" bo=
rder=3D"0" cellspacing=3D"0" cellpadding=3D"0">
<tbody>
<tr>
<td valign=3D"top" style=3D"border-collapse:collapse; padding:0 15px 0 15px=
; width:40px">
<img width=3D"40" height=3D"40" style=3D"height:auto; line-height:100%; out=
line:none; text-decoration:none; -webkit-border-radius:5px; -moz-border-rad=
ius:5px; border-radius:5px" alt=3D"" src=3D"https://secure.gravatar.com/ava=
tar/731971275330e7dead702b5866fbd7b6?size=3D40&amp;default=3Dhttps%3A%2F%2F=
assets.zendesk.com%2Fimages%2F2016%2Fdefault-avatar-80.png&amp;r=3Dg">
</td>
<td width=3D"100%" valign=3D"top" style=3D"border-collapse:collapse; paddin=
g:0; margin:0">
<p style=3D"margin-top: 0px; margin-bottom: 0px;font-family:'Lucida Grande'=
,'Lucida Sans Unicode','Lucida Sans',Verdana,Tahoma,sans-serif; font-size:1=
5px; line-height:18px; margin-bottom:0; margin-top:0; padding:0; color:#1b1=
d1e">
<strong>Karla Thurs</strong> </p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;font-family:'Lucida Grande'=
,'Lucida Sans Unicode','Lucida Sans',Verdana,Tahoma,sans-serif; font-size:1=
3px; line-height:25px; margin-bottom:15px; margin-top:0; padding:0; color:#=
bbbbbb">
Dec 13, 3:48 PM UTC </p>
<div class=3D"zd-comment" style=3D"color:#2b2e2f; font-family:'Lucida Sans =
Unicode','Lucida Grande','Tahoma',Verdana,sans-serif; font-size:14px; line-=
height:22px; margin:15px 0" dir=3D"auto">
<p style=3D"margin-top: 0px; margin-bottom: 0px;color:#2b2e2f; font-family:=
'Lucida Sans Unicode','Lucida Grande','Tahoma',Verdana,sans-serif; font-siz=
e:14px; line-height:22px; margin:15px 0" dir=3D"auto">
Hello,<br>
What is your latest version of Openiscsi and what was the release date? Do =
you happen to have a release schedule that you follow? I see your dates for=
 old releases but don't see anything about following a certain schedule for=
 new releases. If you have anything
 to provide that would be great.</p>
</div>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</div>
<div style=3D"color:#aaaaaa; margin:10px 0 14px 0; padding-top:10px; border=
-top:1px solid #eeeeee">
This email is a service from GitHub Developer Support. </div>
</div>
<span aria-hidden=3D"true" style=3D"color:#FFFFFF">[ER6VKM-QR6V]</span>
<div style=3D"display:none" itemtype=3D"http://schema.org/EmailMessage" ite=
mscope=3D"">
<div itemtype=3D"http://schema.org/ViewAction" itemscope=3D"" itemprop=3D"a=
ction"><link href=3D"https://developer.githubsupport.com/hc/requests/493539=
" itemprop=3D"url">
<meta content=3D"View ticket" itemprop=3D"name">
</div>
</div>
</div>
</div>
</div>
<table width=3D"100%">
<tbody>
<tr>
<td style=3D"font-family:Helvetica;font-size:10pt;color:darkred;">
<p>This communication (including any attachments) may contain information t=
hat is proprietary, confidential or exempt from disclosure. If you are not =
the intended recipient, please note that further dissemination, distributio=
n, use or copying of this communication
 is strictly prohibited. Anyone who received this message in error should n=
otify the sender immediately by telephone or by return email and delete it =
from his or her computer.
</p>
</td>
</tr>
</tbody>
</table>
</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/BYAPR13MB2374C51F1BA4DE9C0C113B6AE3540%40BYAPR13MB237=
4.namprd13.prod.outlook.com?utm_medium=3Demail&utm_source=3Dfooter">https:/=
/groups.google.com/d/msgid/open-iscsi/BYAPR13MB2374C51F1BA4DE9C0C113B6AE354=
0%40BYAPR13MB2374.namprd13.prod.outlook.com</a>.<br />

--_000_BYAPR13MB2374C51F1BA4DE9C0C113B6AE3540BYAPR13MB2374namp_--
